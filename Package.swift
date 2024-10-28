// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomColor",
    defaultLocalization: "en",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CustomColor",
            targets: ["CustomColor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Boris-Em/ColorKit.git", exact: "1.0.0"),
        .package(url: "https://github.com/indragiek/DominantColor.git", .upToNextMajor(from: "0.2.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CustomColor",
            dependencies: [
                .product(name: "ColorKit", package: "ColorKit"),
                .product(name: "DominantColor", package: "DominantColor"),

            ],
            resources: [
                .process("Resources")
            ]
        ),
//        .testTarget(
//            name: "CustomColorTests",
//            dependencies: ["CustomColor"]
//        ),
    ]
)
