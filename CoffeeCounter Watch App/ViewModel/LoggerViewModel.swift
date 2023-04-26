//
//  LoggerViewModel.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import CoreData
import SwiftUI

public class LoggerViewModel: ObservableObject {
    private var context: NSManagedObjectContext
    
    @Published var cupsSoFar: Int = 0
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
}

private extension LoggerViewModel {
    
    func save(_ coffee: FetchedResults<Coffee>) {
        if coffee.isEmpty {
            let coffee = Coffee(context: context)
            coffee.cups = Int64(cupsSoFar)
            coffee.date = Date().onlyDate
            
            do {
                try context.save()
            } catch {
                print("can't save")
            }
        } else {
            coffee.first?.cups = Int64(cupsSoFar)
            do {
                try context.save()
            } catch {
                print("can't save")
            }
        }
    }
    
}

public extension LoggerViewModel {
    
    func fetchCoffee(coffee: FetchedResults<Coffee>) {
        if let coffee = coffee.first {
            cupsSoFar = Int(coffee.cups)
        }
    }
    
    func increment(coffee: FetchedResults<Coffee>) {
        cupsSoFar += 1
        save(coffee)
    }
    
    func decrement(coffee: FetchedResults<Coffee>) {
        cupsSoFar -= 1
        
        if cupsSoFar < 0 {
            cupsSoFar = 0
        }
        save(coffee)
    }
    
}
