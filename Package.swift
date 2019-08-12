// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CoreDataDSL",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "CoreDataDSL", targets: ["CoreDataDSL"])
    ],
    targets: [
        .target(name: "CoreDataDSL", dependencies: [], path: "Sources"),
        .testTarget(name: "CoreDataDSLTests", dependencies: ["CoreDataDSL"], path: "Tests")
    ],
    swiftLanguageVersions: [
        .version("5.1")
    ]
)
