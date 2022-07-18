// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XcodeIssueReporting",
    products: [
        .library(
            name: "XcodeIssueReporting",
            targets: ["XcodeIssueReporting"]),
        .library(
            name: "XcodeIssueReporting+SourceKitten",
            targets: ["XcodeIssueReporting"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.32.0"),
    ],
    targets: [
        .target(
            name: "XcodeIssueReporting",
            dependencies: []),
        .target(
            name: "XcodeIssueReporting+SourceKitten",
            dependencies: [
                "XcodeIssueReporting",
                .product(name: "SourceKittenFramework", package: "SourceKitten")
            ]),
        .testTarget(
            name: "XcodeIssueReportingTests",
            dependencies: ["XcodeIssueReporting"]),
    ]
)
