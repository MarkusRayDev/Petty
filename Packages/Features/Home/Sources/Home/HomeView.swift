import SwiftUI

public struct HomeView<ViewModel: HomeViewModelProtocol>: View {
    var viewModel: ViewModel

    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        Text("Home")
            .navigationTitle("Home")
    }
}
