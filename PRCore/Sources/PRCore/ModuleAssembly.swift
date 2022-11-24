//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import Swinject

public protocol ModuleAssemblyDelegate {
    func loadedAssemblies(resolver: Resolver)
}

public protocol ModuleAssembly: Assembly {
    var delegate: ModuleAssemblyDelegate? { get set }
}
