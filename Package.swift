// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesMobileFuseAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AmazonPublisherServicesMobileFuseAdapter", targets: ["APSMobileFuseAdapterTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", from: "5.6.6"),
        .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm.git", from: "1.11.0")
    ],
    targets: [
        .target(
            name: "APSMobileFuseAdapterTarget",
            dependencies: [
                "APSiOSMobileFuseAdapter",
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
                .product(name: "MobileFuseSDK", package: "mobilefuse-ios-sdk-spm")
            ],
            path: "Sources/APSMobileFuseAdapterTarget"
        ),
        .binaryTarget(
            name: "APSiOSMobileFuseAdapter",
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_MobileFuse_Adapter_SPM/APSMobileFuseAdapter-1.0.0.zip",
            checksum: "8004a24dcab793df95d4ce71a005111415efb964453d379f4a425da01d52f166"
        )
    ]
)
