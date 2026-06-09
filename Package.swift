// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "BanubaUtilities",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaUtilities",
      targets: ["BanubaUtilities"]
    )
  ],
  targets: [
    // Local development uses the path-based binaryTarget below.
    // Release flow (fastlane patch_package_swift_for_nexus) replaces it in the GitHub distribution repo with:
    // .binaryTarget(
    //   name: "BanubaUtilities",
    //   url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/{version}/BanubaUtilities-{version}.xcframework.zip",
    //   checksum: "{computed at release}"
    // )
    .binaryTarget(
      name: "BanubaUtilities",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/1.53.0-beta.1/BanubaUtilities-1.53.0-beta.1.xcframework.zip",
      checksum: "86660617d309eac982a4c428828d7f73ab871fde04022b73d4a93af2c74a0edd"
    )
  ]
)
