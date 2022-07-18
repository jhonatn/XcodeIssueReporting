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
    public let line: Int?
    /// The character offset in the file for this location. 1-indexed.
    public let column: Int?
    
    private init(file: String, line: Int?, column: Int?) {
        self.file = file
        self.line = line
        self.column = column
    }
    
    public static func file(_ absoluteFilePath: String) -> Self {
        self.init(file: absoluteFilePath, line: nil, column: nil)
    }
    public static func sourceCodeFile(_ absoluteFilePath: String, line: Int) -> Self {
        self.init(file: absoluteFilePath, line: line, column: nil)
    }
    public static func sourceCodeFile(_ absoluteFilePath: String, line: Int, column: Int) -> Self {
        self.init(file: absoluteFilePath, line: line, column: column)
    }
}
