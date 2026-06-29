// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Home", targets: ["Home"])
    ],
    dependencies: [
        .package(path: "../../Domain"),
        .package(path: "../../Core"),
    ],
    targets: [
        .target(
            name: "Home",
            dependencies: ["Domain", "Core"]
        ),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home"]
        )
    ]
)
