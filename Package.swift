// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "FluxResourcesKit",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "FluxResourcesKit",
            targets: ["FluxResourcesKit"]
        )
    ],
    targets: [
        .target(
            name: "FluxResourcesKit"
        )
    ]
)
