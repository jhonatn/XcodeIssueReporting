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
        XCTAssertEqual(XcodeIssue.reportMessage(for: reports[0]), "error:Test")
    }
}
