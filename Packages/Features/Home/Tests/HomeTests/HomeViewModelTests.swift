import Testing
@testable import Home

@MainActor
struct HomeViewModelTests {
    @Test func initialState() {
        let viewModel = HomeViewModel()
        // Add assertions as the ViewModel grows
        _ = viewModel
    }
}
