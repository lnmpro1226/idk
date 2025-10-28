import SwiftUI

@main
struct LiveLens: App {
    @StateObject private var authManager = AuthManager()
    
    var body: some Scene {
        WindowGroup {
            Group {
                if authManager.isAuthenticated {
                    MainContentView()
                        .environmentObject(authManager)
                        .transition(.opacity)
                } else {
                    LoginView()
                        .environmentObject(authManager)
                        .transition(.opacity)
                }
            }
            .animation(.easeInOut, value: authManager.isAuthenticated)
        }
    }
}