// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "LiveNotes",
    platforms: [.iOS(.v15)],
    targets: [
        .executableTarget(
            name: "LiveNotes",
            path: "Sources"
        ),
    ]
)
