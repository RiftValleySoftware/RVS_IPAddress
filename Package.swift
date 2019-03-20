import PackageDescription

let package = Package(
    name: "RVS_IPAddress",
    products: [
        .library(
            name: "RVS_IPAddress",
            targets: ["RVS_IPAddress"]
        )
    ],
    targets: [
        .target(
            name: "RVS_IPAddress",
            path: "RVS_IPAddress"
        )
    ],
    swiftLanguageVersions: [
        4.2
    ]
)
