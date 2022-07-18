//
//  File.swift
//  
//
//  Created by Jhonatan A. on 17/07/22.
//

import Foundation

public enum XcodeIssueType: String {
    case error, warning
    
    var processExitValue: Int {
        self == .warning ? 0 : 1
    }
}
