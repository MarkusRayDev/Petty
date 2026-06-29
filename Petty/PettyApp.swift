import SwiftUI

@main
struct PettyApp: App {
#if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
#else
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
#endif

    private let container = AppDIContainer()

    var body: some Scene {
        WindowGroup {
            AppCoordinator(container: container)
        }
    }
}
