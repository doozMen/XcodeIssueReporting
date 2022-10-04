// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "XcodeIssueReporting",
    products: [
        .library(
            name: "XcodeIssueReporting",
            targets: ["XcodeIssueReporting"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "XcodeIssueReporting",
            dependencies: []),
        .testTarget(
            name: "XcodeIssueReportingTests",
            dependencies: ["XcodeIssueReporting"]),
    ]
)
