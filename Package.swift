// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Parse",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Parse",
            targets: ["Parse"]),
        // .library(
        //     name: "ParseFacebookUtils",
        //     targets: ["ParseFacebookUtils"]),
        // .library(
        //     name: "ParseTwitterUtils",
        //     targets: ["ParseTwitterUtils"]),

    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Parse",
            dependencies: [.product(name: "Bolts", package: "Bolts")],
            path: "Parse/Source",
            exclude: ["Info.plist"],
            resources: [.process("Bolts")],
            publicHeadersPath: "Public"
        )
    ]
)
