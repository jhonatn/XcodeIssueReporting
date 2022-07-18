# XcodeIssueReporting

![Issue sample. Shows an error on Xcode with the text "This is a test"](/docs/screenshot1.png)

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

Once you have your Swift package set up, adding Alamofire as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/baguio/XcodeIssueReporting")
]
```

## Example

```swift
XcodeIssue.report(.error(
    "This is a test"
))
```