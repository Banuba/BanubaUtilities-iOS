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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/1.53.0-beta.2/BanubaUtilities-1.53.0-beta.2.xcframework.zip",
      checksum: "801daf8241f7e0abb450805676f3191ae6f1c854fdb116e11f60e7920ecd91d9"
    )
  ]
)
