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
    // -----------------------------------------------------------------
    //  Products – expose a library that downstream code can import.
    // -----------------------------------------------------------------
    products: [
        .library(
            name: "BasicMath",
            type: .static,
            targets: ["BasicMath"]
        )
    ],
    
    // MARK: - Dependencies (none for this tiny package)
    dependencies: [],
    
    // MARK: – Targets (the actual code and test suite)
    // --------------------------------------------------------------------
    // 3. Targets – split into a C++ library and a Swift wrapper
    // --------------------------------------------------------------------
    targets: [
        // ------------------------------------------------------------
        // 3a C++ target (only .cpp/.hpp files)
        // ------------------------------------------------------------
        .target(
            name: "BasicMathCPP",               // internal name – can be anything
            dependencies: [],         // No external modules
            path: "Sources/CPPMath",           // folder that holds the C++ files
            
            sources : [
                // C++ implementation
                "CPPMath.cpp"                 // <‑‑ list each file you *do* want
                // add more .cpp files here if needed
            ],
                
            // ---- Public headers --------------------------------------------------------------
            // Anything under `publicHeadersPath` becomes visible to *other* packages.
            // It also tells SPM where to look for the headers when it builds a Clang module.
            publicHeadersPath: ".",          // Anything inside Sources/CPPMath that ends with .h/.hpp becomes a public Clang module
            
            // ---- C++‑specific settings --------------------------------------------------------
            cxxSettings: [
                // Use the C++20 (or C++23) dialect – change if you need a different version.
                //.cxxStandard("c++20"),
                
                // Tell the compiler where to find your headers.
                .headerSearchPath(".")
                ]
            ),
            
            // ------------------------------------------------------------
            // 3b Swift target (only .swift files, depends on the C++ lib)
            // ------------------------------------------------------------
            .target(
                name: "BasicMath",
                dependencies: ["BasicMathCPP"],     // link against the C++ target
                
                path: "Sources/BasicMath",
                sources: [
                    "BasicMath.swift"
                    // add more Swift files if you have them
                ],
                
                // (Optional) any swift‑specific compile flags
                swiftSettings: [
                    .define("BASICMATH_PACKAGE")
                ]
            ),
        
            // 4. Optional test target (Xcode creates this for you)
            .testTarget(
                name: "BasicMathTests",
                dependencies: ["BasicMath"]
            )
    ]
)
