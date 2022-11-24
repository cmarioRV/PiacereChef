//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import PRDomainModels
import PRCore

extension RemoteSessionEntity: EntityMapper {
    public func toDomainModel() -> RemoteSession? {
        guard let token = self.token else {
            return nil
        }
        
        return RemoteSession(token: token)
    }
}
