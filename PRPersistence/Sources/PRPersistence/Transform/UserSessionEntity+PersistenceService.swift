//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import PRDomainModels
import PRCore

extension UserSessionEntity: EntityMapper {
    public func toDomainModel() -> UserSession? {
        
        guard let name = self.name,
              let email = self.email,
              let remoteSession = self.remoteSession?.toDomainModel() else {
            return nil
        }
        
        return UserSession(name: name, email: email, remoteSession: remoteSession)
    }
}
