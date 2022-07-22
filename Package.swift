// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XcodeIssueReporting",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(
            name: "XcodeIssueReporting",
            targets: ["XcodeIssueReporting"]),
        .library(
            name: "XcodeIssueReportingForSourceKitten",
            targets: ["XcodeIssueReportingForSourceKitten"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.32.0"),
    ],
    targets: [
        .target(
            name: "XcodeIssueReporting",
            dependencies: []),
        .target(
            name: "XcodeIssueReportingForSourceKitten",
            dependencies: [
                "XcodeIssueReporting",
                .product(name: "SourceKittenFramework", package: "SourceKitten")
            ]),
        .testTarget(
            name: "XcodeIssueReportingTests",
            dependencies: ["XcodeIssueReporting"]),
    ]
)
