import Foundation

public struct XcodeIssue {
    public let type: XcodeIssueType
    public let message: String
    public let location: XcodeIssueLocation?

    /// The file path for this location relative to the current working directory.
    public var relativeFile: String? {
        return location?.file.replacingOccurrences(of: FileManager.default.currentDirectoryPath + "/", with: "")
    }
}

// MARK: Initializing
extension XcodeIssue {
    public static func warning(_ message: String, at location: XcodeIssueLocation? = nil) -> XcodeIssue {
        self.init(type: .warning, message: message, location: location)
    }
    
    public static func error(_ message: String, at location: XcodeIssueLocation? = nil) -> XcodeIssue {
        self.init(type: .error, message: message, location: location)
    }
}
