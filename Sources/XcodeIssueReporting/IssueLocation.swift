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
    public let line: UInt
    /// The character offset in the file for this location. 1-indexed.
    public let column: UInt
  
    public init(file: String = #file, line: UInt = #line, column: UInt = #column) {
      self.file = file
      self.line = line
      self.column = column
    }
}
