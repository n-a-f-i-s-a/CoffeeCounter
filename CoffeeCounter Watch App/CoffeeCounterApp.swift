//
//  CoffeeCounterApp.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import SwiftUI

@main
struct CoffeeCounter_Watch_AppApp: App {
    @StateObject private var coreDataService = CoreDataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, coreDataService.container.viewContext)
        }
    }
}
