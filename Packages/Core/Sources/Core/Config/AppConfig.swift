import Foundation

public enum AppEnvironment {
    case debug
    case release
}

public struct AppConfig {
    public let environment: AppEnvironment
    public let apiBaseURL: URL

    public init(environment: AppEnvironment, apiBaseURL: URL) {
        self.environment = environment
        self.apiBaseURL = apiBaseURL
    }
}

public extension AppConfig {
    static let current: AppConfig = {
        #if DEBUG
        return AppConfig(
            environment: .debug,
            apiBaseURL: URL(string: "https://api.dev.example.com")!
        )
        #else
        return AppConfig(
            environment: .release,
            apiBaseURL: URL(string: "https://api.example.com")!
        )
        #endif
    }()

    static let preview = AppConfig(
        environment: .debug,
        apiBaseURL: URL(string: "https://api.dev.example.com")!
    )
}
