//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import PRCore
import Swinject

class FakePersistenceAssembly: ModuleAssembly {
    var delegate: ModuleAssemblyDelegate?
    
    func assemble(container: Container) {
        container.register(CoreDataStackable.self) { _ in
            FakeCoreDataStack(modelName: "Piacere")
        }.inObjectScope(.container)
    }
    
    func loaded(resolver: Resolver) {
        delegate?.loadedAssemblies(resolver: resolver)
    }
}
