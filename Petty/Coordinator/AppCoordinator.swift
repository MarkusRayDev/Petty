import SwiftUI

struct AppCoordinator<Container: DIContainerProtocol>: View {
    @State private var router = Router()
    let container: Container

    var body: some View {
        NavigationStack(path: $router.path) {
            container.makeHomeView()
                .navigationDestination(for: Route.self) { route in
                    destination(for: route)
                }
        }
        .environment(router)
    }

    @ViewBuilder
    private func destination(for route: Route) -> some View {
        switch route {
        case .home:
            container.makeHomeView()
        }
    }
}
