// swift-tools-version:5.9

import PackageDescription

let designSystemVersionRange: Range<Version> = "1.0.3"..<"2.0.0"

let package = Package(
  name: "BanubaUtilities",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaUtilities",
      targets: ["BanubaUtilitiesTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BanubaDesignSystem.git", designSystemVersionRange)
  ],
  targets: [
    .target(
      name: "BanubaUtilitiesWrapper",
      dependencies: [
        "BanubaUtilities",
        .product(name: "BanubaDesignSystem", package: "BanubaDesignSystem")
      ],
      path: "BanubaUtilitiesWrapper"
    ),
    .target(
      name: "BanubaUtilitiesTarget",
      dependencies: [
        .target(name: "BanubaUtilitiesWrapper")
      ],
      path: "BanubaUtilitiesTarget"
    ),
    .binaryTarget(
      name: "BanubaUtilities",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/1.54.1/BanubaUtilities-1.54.1.xcframework.zip",
      checksum: "6689cb8c3104cab37d792b6158862e874423a2110fd4d443279d18193594d295"
    )
  ]
)
