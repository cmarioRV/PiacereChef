//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import CoreData

protocol CoreDataStackable {
    var managedContext: NSManagedObjectContext { get }
    func saveContext()
}
