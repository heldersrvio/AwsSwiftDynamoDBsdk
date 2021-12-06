// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "AwsDynamoDB",
    platforms: [.macOS(.v10_12)],
    products: [.library(name: "AwsDynamoDB", targets: ["AwsDynamoDB"])],
    dependencies: [.package(name: "AwsSign", url: "https://github.com/heldersrvio/AwsSwiftSign.git", from: "0.4.1")],
    targets: [.target(name: "AwsDynamoDB", dependencies: ["AwsSign"]),
              .testTarget(name: "AwsDynamoDBTests", dependencies: ["AwsDynamoDB"])],
    swiftLanguageVersions: [.v5]
)
