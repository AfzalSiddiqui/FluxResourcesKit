// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "flux-ios-assets",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "flux-ios-assets",
            targets: ["flux-ios-assets"]
        )
    ],
    targets: [
        .target(
            name: "flux-ios-assets",
            path: "Sources/flux-ios-assets",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
