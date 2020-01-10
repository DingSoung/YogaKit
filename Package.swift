// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "YogaKit",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "YogaKit", 
                type: .dynamic,
                targets: ["YogaKit"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "YogaKit",
                path: "Sources",
                exclude: [
                ],
                sources: ["Core", "Dependencies/OneDependency/OneDependency.m"],
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
    cxxLanguageStandard: .gnucxx11
)
