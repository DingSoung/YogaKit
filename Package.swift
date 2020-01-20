// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "YogaKit",
    platforms: [
	    .macOS(.v10_10),
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "YogaKit", 
                type: .static,
                targets: ["YogaKit"]
        )
    ],
    dependencies: [],
    targets: [
        .target(name: "YogaKit",
                path: "Sources",
                exclude: [],
                sources: ["Core"],
                publicHeadersPath: "Core/include",
                cSettings: [ 
                    .headerSearchPath("Core/yoga"),
                    .headerSearchPath("Core/event"),
                    .headerSearchPath("Core/internal")
                ]
        )
    ],
    swiftLanguageVersions: [
        .version("5")
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
