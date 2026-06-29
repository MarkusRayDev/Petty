import SwiftUI
import Core
import Home

@MainActor
final class AppDIContainer: DIContainerProtocol {
    let config: AppConfig

    init(config: AppConfig = .current) {
        self.config = config
    }

    func makeHomeView() -> some View {
        HomeBuilder.build(viewModel: HomeViewModel())
    }
}

extension AppDIContainer {
    static let preview = AppDIContainer(config: .preview)
}
