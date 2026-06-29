import ProjectDescription

let project = Project(
    name: "Petty",
    organizationName: "MarkusRay",
    packages: [
        .local(path: "Packages/Core"),
        .local(path: "Packages/Domain"),
        .local(path: "Packages/Data"),
        .local(path: "Packages/Features/Home"),
    ],
    settings: .settings(
        base: [
            "DEVELOPMENT_TEAM": "QUZPX8CSYQ",
            "CODE_SIGN_STYLE": "Automatic"
        ]
    ),
    targets: [
        .target(
            name: "Petty",
            destinations: [.iPhone, .iPad, .macWithiPadDesign, .appleVisionWithiPadDesign],
            product: .app,
            bundleId: "MarkusRay.Petty",
            deploymentTargets: .iOS("17.6"),
            infoPlist: .default,
            sources: ["Petty/**/*.swift"],
            resources: ["Petty/Assets.xcassets"],
            dependencies: [
                .package(product: "Home"),
            ]
        ),
        .target(
            name: "PettyTests",
            destinations: [.iPhone, .iPad],
            product: .unitTests,
            bundleId: "MarkusRay.PettyTests",
            deploymentTargets: .iOS("17.6"),
            infoPlist: .default,
            sources: ["PettyTests/**/*.swift"],
            dependencies: [.target(name: "Petty")]
        ),
        .target(
            name: "PettyUITests",
            destinations: [.iPhone, .iPad],
            product: .uiTests,
            bundleId: "MarkusRay.PettyUITests",
            deploymentTargets: .iOS("17.6"),
            infoPlist: .default,
            sources: ["PettyUITests/**/*.swift"],
            dependencies: [.target(name: "Petty")]
        )
    ]
)
