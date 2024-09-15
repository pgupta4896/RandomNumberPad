// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PRandomNumberPad",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PRandomNumberPad",
            targets: ["PRandomNumberPad"]),
    ],
    targets: [
        .target(
            name: "PRandomNumberPad",
            dependencies: []),
        .testTarget(
            name: "PRandomNumberPadTests",
            dependencies: ["PRandomNumberPad"]),
    ]
)
