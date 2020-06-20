// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "RVS_IPAddress",
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
