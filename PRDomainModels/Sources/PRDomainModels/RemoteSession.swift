//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation

public struct RemoteSession {
    public let token: UUID
    
    public init(token: UUID) {
        self.token = token
    }
}

extension RemoteSession: Equatable {
    public static func == (lhs: RemoteSession, rhs: RemoteSession) -> Bool {
        return lhs.token == rhs.token
    }
}
