// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "TinyLayout",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TinyLayout",
            targets: ["TinyLayout"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TinyLayout",
            dependencies: []),
        .testTarget(
            name: "TinyLayoutTests",
            dependencies: ["TinyLayout"]),
    ]
)
