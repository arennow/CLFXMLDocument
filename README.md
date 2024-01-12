# CLFXMLDocument

For no particular reason, Apple doesn't expose its `XMLDocument` classes on non-macOS platforms, and this library contains those APIs, making `XMLDocument` usable on all Apple platforms. On macOS and Linux, this package simply re-exports those platforms' native implementations of the `XMLDocument` classes, such that you can always refer to `CLFXMLDocument.XMLDocument`, etc. on any platform.

This is accomplished by extracting (and lightly modifying) the `XMLDocument` classes from Apple's [swift-corelibs-foundation](https://github.com/apple/swift-corelibs-foundation) project. (The file `SHA_of_swift-corelibs-foundation` indicates the specific version from which the code was taken.)

**This project will have the same limitations as the swift-corelibs-foundation implementation of `XMLDocument`**, such as not supporting XML namespaces. For slightly more detail, look at that projects [status page](https://github.com/apple/swift-corelibs-foundation/blob/main/Docs/Status.md) (making sure to look at the commit that corresponds to `SHA_of_swift-corelibs-foundation`).

|                 | iOS, iPadOS, tvOS, watchOS, visionOS                      | macOS                     | Linux                                                                           |
|-----------------|-----------------------------------------------------------|---------------------------|---------------------------------------------------------------------------------|
| Implementation  | This packages's extraction from swift-corelibs-foundation | Regular Darwin Foundation | Regular swift-corelibs-foundation                                               |
| Minimum Version | iOS/iPadOS/tvOS 13, watchOS 6, visionOS 1                 | macOS 10.15               | I'm not really sure how Linux is versioned, but this package requires Swift 5.9 |

Pull requests are welcome if they address an ergonomic problem or a compatibility issue with swift-corelibs-foundation. Pull requests that improve compatibility with the Darwin implementation of `XMLDocument` should be directed to swift-corelibs-foundation instead.
