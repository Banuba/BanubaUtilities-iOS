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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/1.54.4/BanubaUtilities-1.54.4.xcframework.zip",
      checksum: "cbd86bdf1da4fb47f4c15e684cecec2c0640384f5dd91aef0f63f99fe01cd418"
    )
  ]
)
