// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFirstIOSLibrary",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyFirstIOSLibrary",
            targets: ["MyFirstIOSLibrary"]),
    ],dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/amplitude/Amplitude-iOS.git", from: "8.17.2"),
        .package(url: "https://github.com/DataDog/dd-sdk-ios.git", from: "2.3.0"),
        .package(url: "https://github.com/jaypatel208/SharedSPM.git", branch: "main"),
    ]
    ,targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyFirstIOSLibrary",dependencies: [
                .product(name: "Amplitude",package: "Amplitude-iOS"),
                .product(name: "DatadogCore",package: "dd-sdk-ios"),
                .product(name: "shared",package: "SharedSPM")
            ]),
    ]
)
