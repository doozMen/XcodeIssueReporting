import XCTest
@testable import XcodeIssueReporting

final class XcodeIssueReportingTests: XCTestCase {
    func generateReports() -> [XcodeIssue] {
        [
          .error("Test"),
        ]
    }
    
    func testExample() throws {
        let reports = generateReports()
        let result = XcodeIssue.reportMessage(for: .error("Test"))
        XCTAssertTrue(result.hasSuffix("error: Test"), "\(result)")
    }
}
