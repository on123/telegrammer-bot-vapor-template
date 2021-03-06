// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "telegrammer-bot-vapor-template",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .executable(name: "telegrammer-bot-vapor-template", targets: ["telegrammer-bot-vapor-template"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-beta"),
        .package(url: "https://github.com/givip/Telegrammer.git", from: "1.0.0-alpha"),
        .package(url: "https://github.com/givip/telegrammer-vapor-middleware.git", from: "1.0.0-alpha")
    ],
    targets: [
        .target(name: "telegrammer-bot-vapor-template", dependencies: [
            "Vapor",
            "Telegrammer",
            "TelegrammerMiddleware"
        ]),
        .testTarget(
            name: "telegrammer-bot-vapor-templateTests",
            dependencies: ["telegrammer-bot-vapor-template"]),
    ]
)
