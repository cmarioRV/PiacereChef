import XCTest
@testable import PRDomainModels

final class RemoteSessionTests: XCTestCase {
    func testRemoteSessionWhenSetShouldBeNotNil() {
        let uuid = UUID()
        let subject = RemoteSession(token: uuid)
        
        XCTAssertNotNil(subject)
        XCTAssertEqual(subject.token, uuid)
    }
}
