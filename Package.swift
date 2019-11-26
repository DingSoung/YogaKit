// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "YogaLayout",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "YogaLayout", targets: ["YogaLayout"])
    ],
    targets: [
        .target(name: "YogaLayout", 
                path: "Sources"//,
                //publicHeadersPath: "Sources",
                //cSettings: [ .headerSearchPath("Sources") ]
            )
    ],
    swiftLanguageVersions: [
        .version("5")
    ],
    cxxLanguageStandard: .gnucxx11
)
