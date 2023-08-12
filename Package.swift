// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIHostingView",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UIHostingView",
            targets: ["UIHostingView"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UIHostingView",
            dependencies: []),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
