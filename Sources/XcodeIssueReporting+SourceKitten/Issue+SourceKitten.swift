//
//  File.swift
//  
//
//  Created by Jhonatan A. on 17/07/22.
//

import XcodeIssueReporting
import SourceKittenFramework

// MARK: Initializing warnings
extension XcodeIssueLocation {
    /// Creates a `Location` based on a `SwiftLintFile` and a byte-offset into the file.
    /// Fails if the specified offset was not a valid location in the file.
    public static func sourceKittenFile(
        _ file: SourceKittenFramework.File, filePath: String? = nil, byteRange: ByteRange
    ) -> XcodeIssueLocation? {
        guard let filePathToUse = filePath ?? file.path else {
            return nil
        }
        
        guard let lineAndCharacter = file.stringView.lineAndCharacter(forByteOffset: byteRange.lowerBound) else {
            return Self.file(filePathToUse)
        }
        
        return Self.sourceCodeFile(
            filePathToUse,
            line: lineAndCharacter.line,
            column: lineAndCharacter.character
        )
    }
}
