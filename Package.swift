// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cal",
    dependencies: [
        .package(path: "../Expression")
    ],
    targets: [
        .target(
            name: "cal",
            dependencies: ["Expression"]),
        .testTarget(
            name: "calTests",
            dependencies: ["cal"])
    ]
)
