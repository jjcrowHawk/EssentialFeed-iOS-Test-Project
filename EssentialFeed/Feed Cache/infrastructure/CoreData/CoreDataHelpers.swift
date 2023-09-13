//
//  CoreDataHelpers.swift
//  EssentialFeed
//
//  Created by Macbook Pro on 11/9/23.
//

import CoreData

extension NSPersistentContainer {
    static func load(modelName: String, url modelURL: URL, in bundle: Bundle) throws -> NSPersistentContainer {
        let description = NSPersistentStoreDescription(url: modelURL)
        let modelURL = bundle.url(forResource: modelName, withExtension: "momd")
        let managedObjectModel = NSManagedObjectModel(contentsOf: modelURL!)
        let container = NSPersistentContainer(name: modelName, managedObjectModel: managedObjectModel!)
        container.persistentStoreDescriptions = [description]
        
        var loadError: Swift.Error?
        container.loadPersistentStores { loadError = $1 }
        try loadError.map { throw $0 }
        
        return container
    }
}

extension NSManagedObjectModel {
    static func with(name: String, in bundle: Bundle) -> NSManagedObjectModel? {
        return bundle
            .url(forResource: name, withExtension: "momd")
            .flatMap { NSManagedObjectModel(contentsOf: $0) }
    }
}
