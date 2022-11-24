//
//  File.swift
//  
//
//  Created by Mario Rúa on 23/11/22.
//

import Foundation
import CoreData

class FakeCoreDataStack: CoreDataStackable {
    private let modelName: String
    
    lazy var managedContext: NSManagedObjectContext = {
        return self.storeContainer.viewContext
    }()
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    private lazy var storeContainer: NSPersistentContainer = {
        let bundle = Bundle.module
        let modelURL = bundle.url(forResource: self.modelName, withExtension: ".momd")!
        let model = NSManagedObjectModel(contentsOf: modelURL)!
        let container = NSPersistentContainer(name: self.modelName, managedObjectModel: model)
        
        let persistentStoreDescription = NSPersistentStoreDescription()
        persistentStoreDescription.type = NSSQLiteStoreType
        persistentStoreDescription.url = URL(fileURLWithPath: "/dev/null")
        container.persistentStoreDescriptions = [persistentStoreDescription]

        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                print("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    func saveContext () {
        guard managedContext.hasChanges else { return }
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Unresolved error \(error), \(error.userInfo)")
        }
    }
}

