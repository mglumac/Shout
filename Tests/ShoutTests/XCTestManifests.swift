import XCTest

#if os(macOS)
extension SFTPTests {
    static let __allTests = [
        ("testDownload", testDownload),
        ("testUpload", testUpload),
        ("testRemove", testRemove),
        ("testRename", testRename),
        ("testRemoveDirectory", testRemoveDirectory),
        ("testCreateDirectory", testCreateDirectory)
    ]
}

extension ShoutTests {
    static let __allTests = [
        ("testCapture", testCapture),
        ("testConnect", testConnect),
        ("testSendFile", testSendFile),
    ]
}
#endif

#if os(Linux)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SFTPTests.__allTests),
        testCase(ShoutTests.__allTests),
    ]
}
#endif
