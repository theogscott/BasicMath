// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BasicMath",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BasicMath",
            targets: ["BasicMath"]
        ),
        
        // Declare the minimum OS versions you support.
        platforms: [
            .iOS(.v26),      // iOS 13+ (or macOS/.v10_15)
            .macOS(.v26)  // macOS Catalina or newer
        ],
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "BasicMath"
        ),
        .testTarget(
            name: "BasicMathTests",
            dependencies: ["BasicMath"]
        ),
    ]
)
