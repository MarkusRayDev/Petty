import SwiftUI

public enum HomeBuilder {
    public static func build(viewModel: some HomeViewModelProtocol) -> some View {
        HomeView(viewModel: viewModel)
    }
}
