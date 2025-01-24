//
//  ContentView.swift
//  app
//
//  Created by Mushaheed Syed on 17/10/24.
//

import SwiftUI
import ReclaimInAppSdk
import Combine
import WebKit

struct ContentView: View {
    @State private var result: ReclaimVerification.Result?
    @State private var showingAlert = false
    @State private var alertMessage = ""
    // Provider id in this example is fetched from the app's Info.plist file.
    @State private var providerId: String = (Bundle.main.infoDictionary?["ReclaimProviderId"] as? String) ?? ""
    
    var body: some View {
        VStack {
            Text("Reclaim SDK Example")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            // A text field to let you use a different reclaim provider id.
            TextField("Provider Id", text: $providerId)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Start Claim") {
                Task {
                    await startClaimCreation()
                }
            }
            .buttonStyle(BorderedProminentButtonStyle())
            
            if let result = result {
                Text("Result: \(result.response)")
                    .padding()
            }
            
            Spacer()
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Claim Creation"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
    
    func startClaimCreation() async {
        do {
            let request = ReclaimVerification.Request.params(
                try .init(
                    /// You can use the appId and secret from Reclaim Devtools to create a request.
                    /// Providing appId and secret here in this initializer is optional. 
                    /// If you don't provide it, the SDK will use the appId and secret from the Info.plist file.
                    /// This example uses the appId and secret from the Info.plist file.
                    // appId: "YOUR_APP_ID_FROM_RECLAIM_DEVTOOLS",
                    // secret: "YOUR_APP_SECRET_FROM_RECLAIM_DEVTOOLS",
                    /// This is the provider id that you've added to your app in Reclaim Devtools.
                    /// The verification flow will use the provider information fetch by this provider id.
                    providerId: providerId
                )
            )
            switch (request) {
            case .params(let request):
                print("your request preview: \(request)")
            default: break
            }
            // This is the function that starts the verification flow.
            // This may fail if device screen is getting shared.
            let result = try await ReclaimVerification.startVerification(request)
            self.result = result
        } catch ReclaimVerificationError.cancelled {
            showAlert(message: "Cancelled")
        } catch ReclaimVerificationError.dismissed {
            showAlert(message: "Cancelled by user")
        } catch ReclaimVerificationError.failed(let error) {
            print("failure error details: \(error)")
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
