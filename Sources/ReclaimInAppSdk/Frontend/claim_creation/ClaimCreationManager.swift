//import Foundation
//import Combine
//
//enum ClaimCreationState {
//    case idle
//    case computing
//    case success(proof: Any)
//    case failed(reason: Any)
//}
//
//class ClaimCreationManager {
//    let clientWebViewViewModel: WebViewViewModel
//    let claimCreationViewModel: ClaimCreationViewModel
//    
//    @Published var claimCreationState = ClaimCreationState.idle
//    
//    init(clientWebViewViewModel: WebViewViewModel, claimCreationViewModel: ClaimCreationViewModel) {
//        self.clientWebViewViewModel = clientWebViewViewModel
//        self.claimCreationViewModel = claimCreationViewModel
//    }
//    
//    @MainActor func onProofRequestHandler(
//        _ request: [String: Any],
//        isSingleRequestEnabled: Bool = false
//    ) async throws {
//        let log = Logging.get("ClaimCreationViewModel.onProofRequestHandler")
//        let url = request["url"] as! String
//        let hwv = HeadlessWebView()
//        try await hwv.load(url: url)
//        let cookies: String = try await (hwv.evaluateJavaScript("document.cookie") as? String ?? "")
//        var headers = request["headers"] as! [String: String]
//        headers["Referer"] = clientWebViewViewModel.getWebViewUrl()
//        let userAgent = try await clientWebViewViewModel.getWebUserAgent()
//        headers["User-Agent"] = userAgent
//        headers["Sec-Fetch-Mode"] = "same-origin"
//        
//        let httpProvider = claimCreationViewModel.provider!;
//        
//        let ownerPrivateKey = try await ReclaimCrypto.getOwnerPrivateKey()
//        
//        let isProviderUrlTypeTemplate = httpProvider.urlType == "TEMPLATE"
//        let providerUrl = isProviderUrlTypeTemplate ? httpProvider.url : url
//        let initialWitnessParameters = claimCreationViewModel.request.witnessParameters
//        var witnessParameters = [String : String]()
//        if isProviderUrlTypeTemplate {
//            ReclaimTemplate.extractUrlTemplateParams(
//                httpProviderTemplateUrl: httpProvider.url,
//                proofRequestUrl: url,
//                initialWitnessParameters: initialWitnessParameters,
//                witnessParameters: &witnessParameters
//            )
//        }
//        
//        let requestBody = request["requestBody"] as? String ?? ""
//        
//        if let template = httpProvider.bodySniff?.template {
//            ReclaimTemplate.extractRequestBodyTemplateParams(
//                httpProviderRequestBodySniffTemplate: template,
//                proofRequestBody: requestBody,
//                initialWitnessParameters: initialWitnessParameters,
//                witnessParameters: &witnessParameters
//            )
//        }
//        
//        for (k, v) in initialWitnessParameters {
//            witnessParameters[k] = v
//        }
//        
//        var extractedData = ExtractedData(
//            witnessParams: witnessParameters,
//            headers: headers,
//            geoLocation: httpProvider.geoLocation,
//            url: providerUrl,
//            method: httpProvider.method,
//            requestBody: httpProvider.bodySniff?.template ?? requestBody,
//            cookies: cookies,
//            responseMatches: [],
//            responseRedactions: []
//        )
//        
//        if !isSingleRequestEnabled {
//            let response = request["response"]
//            let responseSelections = httpProvider.responseSelections
//            let result = try await getUpdatedProviderExtractedParameters(
//                responseSelections: responseSelections,
//                witnessParameters: extractedData.witnessParams,
//                initialWitnessParameters: initialWitnessParameters,
//                proofRequestResponse: request["response"] as? String ?? ""
//            )
//
//            extractedData = extractedData.copy(
//                witnessParams: result.params,
//                responseMatches: result.responseMatches,
//                responseRedactions: result.responseRedactions
//            )
//        }
//        
//        let request = Attestor.CreateClaimRequest(
//            httpParams: extractedData.httpParamsFrom(
//                additionalClientOptions: httpProvider.additionalClientOptions?.toDictionary() ?? [String: Any]()
//            ),
//            secretParams: extractedData.getSecretParams(),
//            sessionId: claimCreationViewModel.request.sessionId,
//            claimContext: claimCreationViewModel.request.reclaimContext,
//            ownerPrivateKey: ownerPrivateKey,
//            useSingleRequest: isSingleRequestEnabled
//        )
//        
//        let result = try await Attestor.shared.createClaim(request)
//    }
//    
//    @MainActor func getUpdatedProviderExtractedParameters(
//        responseSelections: [ResponseSelection],
//        witnessParameters: [String: String],
//        initialWitnessParameters: [String: String],
//        proofRequestResponse: String
//    ) async throws -> (params: [String: String], responseMatches: [ExtractedData.ResponseMatch], responseRedactions: [ExtractedData.ResponseRedaction]) {
//        let attestor = try await Attestor.shared
//        
//        var params = [String: String]()
//        for (k, v) in witnessParameters {
//            params[k] = v
//        }
//        
//        let log = Logging.get("getUpdatedProviderExtractedParameters")
//        
//        var responseMatches = [ExtractedData.ResponseMatch]()
//        var responseRedactions = [ExtractedData.ResponseRedaction]()
//        
//        for responseSelection in responseSelections {
//            var element = proofRequestResponse
//            if !responseSelection.xPath.isEmpty {
//                let extractedHtmlElement = try await attestor.extractHtmlElement(
//                    html: element,
//                    xpathExpression: responseSelection.xPath,
//                    contentsOnly: false
//                )
//                element = extractedHtmlElement
//            } else {
//                log.child("responseSelection").log("response selection xpath is empty")
//            }
//            if !responseSelection.jsonPath.isEmpty {
//                let bounds = try await attestor.extractJsonValueIndex(
//                    json: element,
//                    jsonPath: responseSelection.jsonPath
//                )
//                let substring = element[element.index(element.startIndex, offsetBy: bounds.start)..<element.index(element.startIndex, offsetBy: bounds.end)]
//                element = String(substring)
//            }
//            let templateRegex = ReclaimTemplate.convertTemplateToRegex(
//                parameters: initialWitnessParameters,
//                template: responseSelection.responseMatch,
//                matchTypeOverride: responseSelection.matchType
//            )
//            let responseMatchRegex = templateRegex.effectiveTemplate
//            let responseMatchParamKeys = templateRegex.unSubstitutedVars
//            
//            do {
//                let regex = try NSRegularExpression(pattern: responseMatchRegex)
//                let match = regex.firstMatch(in: element, options: [], range: NSRange(location: 0, length: element.count))!
//                
//                let responseSelectionParamValues = responseMatchParamKeys.map { key -> String? in
//                    let range = match.range(withName: key)
//                    guard range.location != NSNotFound else { return nil }
//                    return (element as NSString).substring(with: range)
//                }
//                
//                for (index, key) in responseSelectionParamValues.enumerated() {
//                    guard let key else { continue }
//                    params[key] = responseSelectionParamValues[index]
//                }
//                
//                responseRedactions.append(ExtractedData.ResponseRedaction(
//                          xPath: responseSelection.xPath,
//                          jsonPath: responseSelection.jsonPath,
//                          regex: responseMatchRegex
//                ));
//
//                responseMatches.append(ExtractedData.ResponseMatch(
//                        type: "contains",
//                          value: responseSelection.responseMatch,
//                          invert: false
//                ));
//            } catch {
//                log.log("getUpdatedProviderExtractedParameters", level: .SEVERE, error: error)
//            }
//        }
//        
//        
//        log.log("responseRedactions \(responseRedactions)");
//        for (k, v) in initialWitnessParameters {
//            params[k] = v
//        }
//        
//        return (params: params, responseRedactions: responseRedactions, responseMatches: responseMatches)
//    }
//    
//    struct ExtractedData {
//        let witnessParams: [String: String]
//        let headers: [String: String]
//        let geoLocation: String?
//        let url: String
//        let method: String
//        let requestBody: String
//        let cookies: String
//        let responseMatches: [ResponseMatch]
//        let responseRedactions: [ResponseRedaction]
//        
//        func copy(
//            witnessParams: [String: String]? = nil,
//            headers: [String: String]? = nil,
//            geoLocation: String? = nil,
//            url: String? = nil,
//            method: String? = nil,
//            requestBody: String? = nil,
//            cookies: String? = nil,
//            responseMatches: [ResponseMatch]? = nil,
//            responseRedactions: [ResponseRedaction]? = nil
//        ) -> ExtractedData {
//            return ExtractedData(
//                witnessParams: witnessParams ?? self.witnessParams,
//                headers: headers ?? self.headers,
//                geoLocation: geoLocation ?? self.geoLocation,
//                url: url ?? self.url,
//                method: method ?? self.method,
//                requestBody: requestBody ?? self.requestBody,
//                cookies: cookies ?? self.cookies,
//                responseMatches: responseMatches ?? self.responseMatches,
//                responseRedactions: responseRedactions ?? self.responseRedactions
//            )
//        }
//        
//        struct ResponseMatch: Codable {
//            let type: String;
//            let value: String;
//            let invert: Bool;
//        }
//        
//        struct ResponseRedaction: Codable {
//            let xPath: String?
//            let jsonPath: String?
//            let regex: String?
//        }
//        
//        func httpParamsFrom(
//            additionalClientOptions: [String: Any]
//        ) -> [String: Any?] {
//            let extractedData = self
//            var publicWitnessParams = [String: String]()
//            for (key, value) in extractedData.witnessParams {
//                if !key.contains("SECRET") {
//                    publicWitnessParams[key] = value;
//                }
//            }
//            var publicHeaders = [String: String]()
//            for (key, value) in extractedData.headers {
//                if ExtractedData.isHeaderPubliclyAllowed(key) {
//                    publicHeaders[key] = value
//                }
//            }
//            return [
//                "geoLocation": extractedData.geoLocation,
//                "url": extractedData.url,
//                "method": extractedData.method,
//                "body": extractedData.requestBody,
//                "headers": publicHeaders,
//                "responseMatches": extractedData.responseMatches.toDictionary(),
//                "responseRedactions": extractedData.responseRedactions.toDictionary(),
//                "paramValues": publicWitnessParams,
//                "additionalClientOptions": additionalClientOptions
//            ]
//        }
//        
//        func getSecretParams() -> [String: Any?] {
//            let extractedData = self
//            var privateWitnessParams = [String: Any]()
//            for (key, value) in extractedData.witnessParams {
//                if key.contains("SECRET") {
//                    privateWitnessParams[key] = value;
//                }
//            }
//            var privateHeaders = [String: String]()
//            for (key, value) in extractedData.headers {
//                if !ExtractedData.isHeaderPubliclyAllowed(key) {
//                    privateHeaders[key] = value
//                }
//            }
//            return [
//                "headers": privateHeaders,
//                "cookieStr": extractedData.cookies,
//                "paramValues": privateWitnessParams
//            ]
//        }
//        
//        static func isHeaderPubliclyAllowed(_ headerName: String) -> Bool {
//            return _PUBLIC_HEADERS_ALLOW_LIST.contains(where: { headerName.lowercased() == $0.lowercased() })
//        }
//        
//        static private let _PUBLIC_HEADERS_ALLOW_LIST = [
//            "user-agent",
//            "accept",
//            "accept-language",
//            "accept-encoding",
//            "sec-fetch-mode",
//            "sec-fetch-site",
//            "sec-fetch-user",
//            "sec-fetch-dest",
//            "referer",
//            "origin",
//            "x-requested-with",
//            "sec-ch-ua",
//            "sec-ch-ua-mobile",
//            "referer",
//        ];
//    }
//}
