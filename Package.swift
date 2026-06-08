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
    .binaryTarget(
      name: "BanubaUtilities",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaUtilities/1.53.0-beta.0/BanubaUtilities-1.53.0-beta.0.xcframework.zip",
      checksum: "dabd55e54e0e8ef7f3b142f89b49e5d72bcc380050f332dc4c0ce1ec2204ef10"
    )
  ]
)
