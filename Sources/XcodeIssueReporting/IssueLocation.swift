//
//  File.swift
//  
//
//  Created by Jhonatan A. on 17/07/22.
//

import Foundation

public struct XcodeIssueLocation {
    /// The file path on disk for this location.
    public let file: String
    /// The line offset in the file for this location. 1-indexed.
    public let line: UInt?
    /// The character offset in the file for this location. 1-indexed.
    public let column: UInt?
}

extension XcodeIssueLocation {
    public static func file(_ absoluteFilePath: String) -> Self {
        self.init(file: absoluteFilePath, line: nil, column: nil)
    }
    
    public static func sourceCodeFile(_ absoluteFilePath: String, line: UInt) -> Self {
        self.init(file: absoluteFilePath, line: line, column: nil)
    }
    
    public static func sourceCodeFile(_ absoluteFilePath: String, line: UInt, column: UInt) -> Self {
        self.init(file: absoluteFilePath, line: line, column: column)
    }
}
