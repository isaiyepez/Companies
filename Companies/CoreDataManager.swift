//
//  CoreDataManager.swift
//  Companies
//
//  Created by Isai Yepez on 2/18/19.
//  Copyright © 2019 Isai Yepez. All rights reserved.
//

import CoreData

struct CoreDataManager {
    static let shared = CoreDataManager()//Will live forever as long as your application is still alive, it's properties will too
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Companies")
        container.loadPersistentStores { (storeDescription, error) in
            if let err = error {
                fatalError("Loading of store failed: \(err)")
            }
        }
        return container
    }()
}
