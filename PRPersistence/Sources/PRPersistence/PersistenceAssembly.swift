//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import Swinject
import PRCore

class PersistenceAssembly: ModuleAssembly {
    var delegate: ModuleAssemblyDelegate?
    
    public func assemble(container: Container) {
        container.register(CoreDataStackable.self) { _ in
            CoreDataStack(modelName: "Piacere")
        }.inObjectScope(.container)
    }
    
    func loaded(resolver: Resolver) {
        delegate?.loadedAssemblies(resolver: resolver)
    }
}
