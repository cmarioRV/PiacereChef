//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import CoreData

public protocol  EntityMapper: NSManagedObject {
    associatedtype DomainModelType
    func toDomainModel() -> DomainModelType
}

enum Errors: Error {
    case castFailed
}
