# XcodeIssueReporting

![Issue sample. Shows an error on Xcode with the text "This is a test"](/docs/screenshot1.png)

Tool that makes easier reporting warnings and errors to Xcode. This is specially useful whenever working with [Swift Package Plugins](https://developer.apple.com/videos/play/wwdc2022/110359) or any tool that is run as part of the compilation of an Xcode project

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

You can also specify where the issue appears in code, like the code file, line and column. This way, when you select the issue on the Xcode navigator, it will display the file and the code location.

```swift
XcodeIssue.report(.warning(
    "This is another test"
    absoluteFilePath: "/Users/dev/Developer/SampleProject/Sources/SampleProject/main.swift",
    line: 3,
    column: 5
))
```
