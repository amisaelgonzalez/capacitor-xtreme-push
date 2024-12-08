// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorXtremePush",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorXtremePush",
            targets: ["XtremePushPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "XtremePushPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/XtremePushPlugin"),
        .testTarget(
            name: "XtremePushPluginTests",
            dependencies: ["XtremePushPlugin"],
            path: "ios/Tests/XtremePushPluginTests")
    ]
)