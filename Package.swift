// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "RVS_IPAddress",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .macOS(.v10.14),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "RVS-IPAddress",
            type: .dynamic,
            targets: ["RVS_IPAddress"])
    ],
    targets: [
        .target(
            name: "RVS_IPAddress",
            path: "./src")
    ]
)
