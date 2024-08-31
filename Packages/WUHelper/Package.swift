// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let sharedSwiftSettings: [SwiftSetting] = [
    .unsafeFlags([
        "-Xfrontend",
        "-warn-long-function-bodies=250",
        "-Xfrontend",
        "-warn-long-expression-type-checking=250",
    ]),
    .enableExperimentalFeature("AccessLevelOnImport"),
]

let package = Package(
    name: "WUHelper",
    platforms: [.iOS(.v17), .macOS(.v14), 
    products: [
        .library(
            name: "WUHelper",
            targets: ["WUHelper"]),
    ],
    dependencies: [
        .package(path: "../WallpaperKit"),
        .package(path: "../GachaKit"),
        .package(path: "../WUKit"),
        .package(url: "https://github.com/elai950/AlertToast", .upToNextMajor(from: "1.3.9")),
    targets: [
        .target(
            name: "PZHelper",
            dependencies: [
                .product(name: "AlertToast", package: "AlertToast"),
                .product(name: "WuWaKit", package: "WUKit"),
                .product(name: "GachaKit", package: "GachaKit"),
                .product(name: "WallpaperKit", package: "WallpaperKit"),
            ],
            swiftSettings: sharedSwiftSettings
        ),
    ]
)
