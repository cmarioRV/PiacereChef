//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation

public struct UserSession {
    public let name: String
    public let email: String
    public let remoteSession: RemoteSession
    
    public init(name: String, email: String, remoteSession: RemoteSession) {
        self.name = name
        self.email = email
        self.remoteSession = remoteSession
    }
}

extension UserSession: Equatable {
    public static func == (lhs: UserSession, rhs: UserSession) -> Bool {
        return lhs.name == rhs.name &&
        lhs.email == rhs.email &&
        lhs.remoteSession == lhs.remoteSession
    }
}
