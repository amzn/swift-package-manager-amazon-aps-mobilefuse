# Amazon Publisher Services MobileFuse Adapter — Swift Package Manager

Swift Package Manager distribution for the APS MobileFuse mediation adapter.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Amazon Publisher Services SDK 5.6.6+
- MobileFuse SDK 1.11.0+

## Installation

**Xcode**

1. File → Add Package Dependencies…
2. Enter `https://github.com/amzn/swift-package-manager-amazon-aps-mobilefuse.git`
3. Select "Up to Next Major Version" from `1.0.0`.
4. Add the `AmazonPublisherServicesMobileFuseAdapter` product to your app target.

**Package.swift**

```swift
.package(url: "https://github.com/amzn/swift-package-manager-amazon-aps-mobilefuse.git", from: "1.0.0")
```

Then add the product:

```swift
.product(name: "AmazonPublisherServicesMobileFuseAdapter", package: "swift-package-manager-amazon-aps-mobilefuse")
```

Adding this package transitively pulls in the APS SDK and the MobileFuse SDK — you do not need to add them separately.

## Usage

```objc
// Objective-C
#import <DTBiOSSDK/DTBiOSSDK.h>
```

```swift
// Swift
import DTBiOSSDK
```

`AmazonPublisherServicesMobileFuseAdapter` is the SPM **product** (what you attach in Xcode). Adapter classes are loaded automatically at runtime via `NSClassFromString` — you do not need to import the adapter module in application code.

## `-ObjC` linker flag

Add `-ObjC` to **Build Settings → Other Linker Flags** for your app target. Required by DTBiOSSDK and MobileFuse SDK.

## License

Apache License 2.0. See [LICENSE](./LICENSE).
