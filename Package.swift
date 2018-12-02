// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cal",
    dependencies: [
        .package(url: "https://github.com/scanf/Expression", .branch("master"))
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
