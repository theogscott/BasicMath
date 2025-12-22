// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "BasicMath",
    
    // MARK: - Platforms you support
    platforms: [
        .iOS(.v15),   // iOS 15+ (or later)
        .macOS(.v13)   // macOS 13+ (Ventura) – adjust if you need an older version
    ],
    
    // MARK: - Products (what the package vends to clients)
    products: [
        .library(
            name: "BasicMath",
            targets: ["BasicMath"]
        )
    ],
    
    // MARK: - Dependencies (none for this tiny package)
    dependencies: [],
    
    // MARK: – Targets (the actual code and test suite)
    targets: [
        // The main library target
        .target(
            name: "BasicMath",
            dependencies: []          // No external modules
        ),
        
        // Optional test target (Xcode creates this for you)
        .testTarget(
            name: "BasicMathTests",
            dependencies: ["BasicMath"]
        )
    ]
)
