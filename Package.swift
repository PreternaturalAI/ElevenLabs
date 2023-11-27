// swift-tools-version:5.9

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "ElevenLabs",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(
            name: "ElevenLabs",
            targets: [
                "ElevenLabs"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/PreternaturalAI/CoreGML.git", branch: "main"),
        .package(url: "https://github.com/vmanot/CorePersistence.git", branch: "main"),
        .package(url: "https://github.com/vmanot/Expansions.git", branch: "main"),
        .package(url: "https://github.com/vmanot/Merge.git", branch: "master"),
        .package(url: "https://github.com/vmanot/NetworkKit.git", branch: "master"),
        .package(url: "https://github.com/vmanot/Swallow.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "ElevenLabs",
            dependencies: [
                "CorePersistence",
                "Expansions",
                "CoreGML",
                "Merge",
                "NetworkKit",
                "Swallow"
            ],
            path: "Sources"
        )
    ]
)
