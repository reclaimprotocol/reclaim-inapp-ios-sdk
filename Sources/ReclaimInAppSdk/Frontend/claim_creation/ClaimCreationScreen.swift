import SwiftUI

struct ClaimCreationScreen: View {
    @ObservedObject var viewModel: ClaimCreationViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    init(viewModel: ClaimCreationViewModel) {
        self.viewModel = viewModel
    }
    
    @MainActor func onInitializationStateChanged(_ it: ClaimCreationViewModel.InitializationState) {
        guard case .ready = it else {
            return
        }
    }
    
    var body: some View {
        NavigationView {
            FlutterViewControllerRepresentable()
        }
        .preferredColorScheme(.light)
        .navigationViewStyle(StackNavigationViewStyle())
        .onReceive(viewModel.$initializationState) { state in
            onInitializationStateChanged(state)
        }
        .onAppear {
            Task { @MainActor in
                await initializeRequest()
            }
        }
    }
    
    func initializeRequest() async {
        let log = Logging.get("ClaimCreationScreen.initializeRequest")
        log.log("sending request")
        await viewModel.sendRequest()
        log.log("request sent")
    }
}
