# CLFXMLDocument

For no particular reason, Apple doesn't expose its `XMLDocument` classes on non-macOS platforms, and this library contains those APIs, making `XMLDocument` usable on all Apple platforms.

This is accomplished by extracting (and lightly modifying) the `XMLDocument` classes from Apple's [swift-corelibs-foundation](https://github.com/apple/swift-corelibs-foundation) project. (The file `SHA_of_swift-corelibs-foundation` indicates the specific version from which the code was taken.)

**This project will have the same limitations as the swift-corelibs-foundation implementation of `XMLDocument`**, like not supporting XML namespaces. For slightly more detail, look at that projects [status page](https://github.com/apple/swift-corelibs-foundation/blob/main/Docs/Status.md) (making sure to look at the commit that corresponds to `SHA_of_swift-corelibs-foundation`).

If you're writing software for macOS only, there's no reason to use this project. I don't think this works on Linux, since it re-defines a Clang module from swift-corelibs-foundation, but you also don't need it on Linux for that same reason.

Pull requests are welcome if they address an ergonomic problem or a compatibility issue with swift-corelibs-foundation. Pull requests that improve compatibility with the Darwin implementation of `XMLDocument` should be directed to swift-corelibs-foundation instead.