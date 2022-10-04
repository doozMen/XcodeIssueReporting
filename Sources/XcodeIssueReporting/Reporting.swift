import Foundation

extension XcodeIssue {
    static func reportMessage(for issue: XcodeIssue) -> String {
        // Xcode likes warnings and errors in the following format:
        // {full_path_to_file}:{line}:{column_start}: {error,warning}: {content}
        var sections: [String] = []
        let location = issue.location
        let filePath = issue.location.file.trimmingCharacters(in: .whitespacesAndNewlines)
        if !filePath.isEmpty {
            sections.append(filePath)
            
          sections.append(contentsOf: [
              "\(location.line)",
              "\(location.column)"
          ])
        }
        
        sections.append(contentsOf: [
            " \(issue.type.rawValue)",
            " \(issue.message)"
        ])
        
        return sections.joined(separator: ":")
    }
    
    @discardableResult
    public static func report(_ issue: XcodeIssue) -> Int {
        let toPrint = reportMessage(for: issue)
        print(toPrint)
        return issue.type.processExitValue
    }
    
    @discardableResult
    public static func report(_ issues: [XcodeIssue]) -> Int {
        return issues
            .map { report($0) }
            .max() ?? 0
    }
}
