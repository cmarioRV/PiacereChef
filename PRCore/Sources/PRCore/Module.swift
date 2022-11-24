//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation

public protocol Module: ModuleAssemblyDelegate {
    var moduleAssembly: ModuleAssembly { get }
    init(assembly: ModuleAssembly?)
}
