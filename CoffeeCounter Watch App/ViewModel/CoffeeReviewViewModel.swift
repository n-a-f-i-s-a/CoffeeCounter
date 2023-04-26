//
//  CoffeeReviewViewModel.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 27/4/2023.
//

import Charts
import Foundation

final public class CoffeeReviewViewModel: ObservableObject {
    init() {
        
    }
}

extension CoffeeReviewViewModel {
    
    func makeXvalue(_ coffee: Coffee) -> String {
        coffee.date ?? ""
    }
    
    func makeYvalue(_ coffee: Coffee) -> Int64 {
        coffee.cups
    }
    
}
