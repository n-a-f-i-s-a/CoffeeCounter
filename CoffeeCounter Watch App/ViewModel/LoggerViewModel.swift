//
//  LoggerViewModel.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import Foundation

public class LoggerViewModel: ObservableObject {
    
    @Published var cupCounter: Int
    
    init() {
        cupCounter = 0
    }
}

public extension LoggerViewModel {
    
    func increment() {
        cupCounter += 1
    }
    
    func decrement() {
        cupCounter -= 1
        if cupCounter < 0 {
            cupCounter = 0
        }
    }
}
