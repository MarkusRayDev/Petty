import SwiftUI

@MainActor
protocol DIContainerProtocol: AnyObject {
    associatedtype HomeViewType: View
    @ViewBuilder func makeHomeView() -> HomeViewType
}
