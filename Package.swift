// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "BanubaUtilities",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "BanubaUtilities",
            targets: ["BanubaUtilities"])
    ],
    targets: [
        .binaryTarget(
            name: "BanubaUtilities",
            path: "BanubaUtilities.xcframework")
    ])
