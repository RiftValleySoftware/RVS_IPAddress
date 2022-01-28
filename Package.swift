// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "RVS_IPAddress",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .macOS(.v10_14),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "RVS-IPAddress",
            targets: ["RVS_IPAddress"])
    ],
    targets: [
        .target(name: "RVS_IPAddress"),
        .testTarget(name: "RVS-IPAddressTest",
                    dependencies: ["RVS_IPAddress"],
                    path: "Tests/RVS_IPAddressTest")
    ]
)
