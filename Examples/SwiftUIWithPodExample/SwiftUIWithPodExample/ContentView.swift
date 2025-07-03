//
//  ContentView.swift
//  sample
//
//  Created by Mushaheed Syed on 14/02/25.
//

import SwiftUI
import ReclaimInAppSdk

enum ConfigurationOption: String, CaseIterable {
    case providerId = "Provider Id"
    case jsonConfig = "JSON config"
    case url = "URL"
}

struct ContentView: View {
    @State private var result: ReclaimVerification.Response?
    @State private var showingAlert = false
    @State private var alertMessage = ""
    // Provider id in this example is fetched from the app's Info.plist file.
    @State private var inputText: String = (Bundle.main.infoDictionary?["ReclaimProviderId"] as? String) ?? ""
    @State private var selectedOption: ConfigurationOption = .providerId
    
    func setOverrides() {
        Task { @MainActor in
            do {
                try await ReclaimVerification.setOverrides(
                    appInfo: ReclaimOverrides.ReclaimAppInfo(
                        appName: "Overriden Example",
                        appImageUrl: "https://placehold.co/400x400/png"
                    )
                )
            } catch {
                print("unexpected failure error details: \(error)")
                showAlert(message: "Could not set overrides")
            }
        }
    }

    var body: some View {
        VStack {
            Text("Reclaim SDK Example")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            // Dropdown picker for configuration options
            Picker("Verification Mode", selection: $selectedOption) {
                ForEach(ConfigurationOption.allCases, id: \.self) { option in
                    Text(option.rawValue).tag(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
            
            // A text field to let you use a different reclaim provider id.
            TextField(selectedOption.rawValue, text: $inputText)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Start Claim") {
                Task {
                    await startClaimCreation()
                }
            }
            .buttonStyle(BorderedProminentButtonStyle())
            
            if let result {
                Text("Result: \(result)")
                    .padding()
            }
            
            Spacer()
        }
        .onAppear {
            setOverrides()
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Claim Creation"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
    
    func startClaimCreation() async {
        do {
            /// Optionally, you can set the verification options to customize the verification flow.
            try await ReclaimVerification.setVerificationOptions(options: .init(
                canAutoSubmit: false,
                isCloseButtonVisible: true
            ))
            let request: ReclaimVerification.Request
            switch (selectedOption) {
            case .providerId:
                request = ReclaimVerification.Request.params(
                   try .init(
                       /// You can use the appId and secret from Reclaim Devtools to create a request.
                       /// Providing appId and secret here in this initializer is optional.
                       /// If you don't provide it, the SDK will use the appId and secret from the Info.plist file.
                       /// This example uses the appId and secret from the Info.plist file.
                       // appId: "YOUR_APP_ID_FROM_RECLAIM_DEVTOOLS",
                       // secret: "YOUR_APP_SECRET_FROM_RECLAIM_DEVTOOLS",
                       /// This is the provider id that you've added to your app in Reclaim Devtools.
                       /// The verification flow will use the provider information fetch by this provider id.
                       providerId: inputText
                   )
               )
            case .jsonConfig:
                request = ReclaimVerification.Request.json(JSONUtility.fromString(inputText) as! [AnyHashable?: Sendable?])
            case .url:
                request = ReclaimVerification.Request.url(inputText)
            }
            switch (request) {
            case .params(let request):
                print("your request preview: \(request)")
            case .json(let request):
                print("your request preview: \(request)")
            case .url(let request):
                print("your request preview: \(request)")
            }
            // This is the function that starts the verification flow.
            // This may fail if device screen is getting shared.
            let result = try await ReclaimVerification.startVerification(request)
            self.result = result
        } catch ReclaimVerificationError.cancelled {
            showAlert(message: "Cancelled")
        } catch ReclaimVerificationError.dismissed {
            showAlert(message: "Cancelled by user")
        } catch ReclaimVerificationError.sessionExpired {
            // Expired or invalid session
            showAlert(message: "Session Expired")
        } catch ReclaimVerificationError.failed(let sessionId, _, let message) {
            print("failure error details (session \(sessionId): \(message)")
            Task { @MainActor in
                showAlert(message: "Something went wrong")
            }
        } catch {
            print("unexpected failure error details: \(error)")
            Task { @MainActor in
                showAlert(message: "An unexpected error occurred")
            }
        }
    }
    
    private func showAlert(message: LocalizedStringResource) {
        alertMessage = String(localized: message)
        showingAlert = true
    }
}

#Preview {
    ContentView()
}
