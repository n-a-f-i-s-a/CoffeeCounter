//
//  CoreDataService.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 26/4/2023.
//

import CoreData
import Foundation

final class CoreDataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "CoffeeModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
