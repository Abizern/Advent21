// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Advent21",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "Advent21", type: .static, targets: ["Advent21"]),
        .executable(name: "aoc21", targets: ["aoc21"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
        .package(url: "https://github.com/Abizern/AoCUtils", from: "0.0.5"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "aoc21",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "AoCUtils", package: "AoCUtils"),
                "Advent21"]),
        .target(
            name: "Advent21",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "AoCUtils", package: "AoCUtils"),
            ],
            resources: [.process("Inputs")]),
        .testTarget(
            name: "Advent21Tests",
            dependencies: ["Advent21"]),
    ]
)
