//
//  OnlyDate.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 26/4/2023.
//

import Foundation

extension Date {
    
    var onlyDate: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .none
        formatter.dateStyle = .medium
        formatter.timeZone = TimeZone.current
        return formatter.string(from: Date())
    }

}
