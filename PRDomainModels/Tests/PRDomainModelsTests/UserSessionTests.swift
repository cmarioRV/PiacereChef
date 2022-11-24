//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import XCTest
@testable import PRDomainModels

final class UserSessionTests: XCTestCase {
    func testUserSessionWhenSetShouldBeNotNil() {
        let remoteSession = RemoteSession(token: UUID())
        let subject = UserSession(name: "John", email: "Doe", remoteSession: remoteSession)
        XCTAssertNotNil(subject)
        XCTAssertEqual(subject.name, "John")
        XCTAssertEqual(subject.email, "Doe")
        XCTAssertEqual(subject.remoteSession, remoteSession)
    }
}

