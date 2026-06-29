// swift-tools-version:5.9

import PackageDescription

let designSystemVersionRange: Range<Version> = "1.0.0-beta.0"..<"2.0.0"

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
    // Local development uses the path-based binaryTarget below.
    // Release flow (fastlane patch_package_swift_for_nexus) replaces it in the GitHub distribution repo with:
    // .binaryTarget(
    //   name: "BanubaUtilities",
    //   url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/{version}/BanubaUtilities-{version}.xcframework.zip",
    //   checksum: "{computed at release}"
    // )
    .binaryTarget(
      name: "BanubaUtilities",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/1.53.0/BanubaUtilities-1.53.0.xcframework.zip",
      checksum: "fb7206e0c23ec8cf129371ddddc4b66ee35f65a0b1ff9685209c36fb0b24402a"
    )
  ]
)
