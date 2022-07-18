import Foundation

public struct XcodeIssue {
    /// The file path on disk for this location.
    public let file: String?
    /// The line offset in the file for this location. 1-indexed.
    public let line: Int?
    /// The character offset in the file for this location. 1-indexed.
    public let column: Int?
    
    public let type: XcodeIssueType
    public let message: String

    /// The file path for this location relative to the current working directory.
    public var relativeFile: String? {
        return file?.replacingOccurrences(of: FileManager.default.currentDirectoryPath + "/", with: "")
    }
    
    init(type: XcodeIssueType, message: String, absoluteFilePath: String?, line: Int?, column: Int?) {
        self.type = type
        self.file = absoluteFilePath
        self.line = line
        self.column = column
        self.message = message
    }
}

// MARK: Initializing warnings
extension XcodeIssue {
    public static func warning(_ message: String) -> XcodeIssue {
        self.init(type: .warning, message: message, absoluteFilePath: nil, line: nil, column: nil)
    }
    public static func warning(_ message: String, absoluteFilePath: String) -> XcodeIssue {
        self.init(type: .warning, message: message, absoluteFilePath: absoluteFilePath, line: nil, column: nil)
    }
    public static func warning(_ message: String, absoluteFilePath: String, line: Int) -> XcodeIssue {
        self.init(type: .warning, message: message, absoluteFilePath: absoluteFilePath, line: line, column: nil)
    }
    public static func warning(_ message: String, absoluteFilePath: String, line: Int, column: Int) -> XcodeIssue {
        self.init(type: .warning, message: message, absoluteFilePath: absoluteFilePath, line: line, column: column)
    }
}

// MARK: Initializing errors
extension XcodeIssue {
    public static func error(_ message: String) -> XcodeIssue {
        self.init(type: .error, message: message, absoluteFilePath: nil, line: nil, column: nil)
    }
    public static func error(_ message: String, absoluteFilePath: String) -> XcodeIssue {
        self.init(type: .error, message: message, absoluteFilePath: absoluteFilePath, line: nil, column: nil)
    }
    public static func error(_ message: String, absoluteFilePath: String, line: Int) -> XcodeIssue {
        self.init(type: .error, message: message, absoluteFilePath: absoluteFilePath, line: line, column: nil)
    }
    public static func error(_ message: String, absoluteFilePath: String, line: Int, column: Int) -> XcodeIssue {
        self.init(type: .error, message: message, absoluteFilePath: absoluteFilePath, line: line, column: column)
    }
}
