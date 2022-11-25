// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PRPersistenceInterface",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PRPersistenceInterface",
            targets: ["PRPersistenceInterface"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(path: "PRDomainModels"),
        .package(path: "PRCore")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PRPersistenceInterface",
            dependencies: ["PRDomainModels", "PRCore"]),
        .testTarget(
            name: "PRPersistenceInterfaceTests",
            dependencies: ["PRPersistenceInterface"]),
    ]
)
