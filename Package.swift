// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "BanubaUtilities",
  platforms: [
    .iOS(.v17)
  ],
  products: [
    .library(
      name: "BanubaUtilities",
      targets: ["BanubaUtilities"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "BanubaUtilities",
      path: "BanubaUtilities.xcframework"
    )
  ]
)
