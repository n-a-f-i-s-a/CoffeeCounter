//
//  ContentView.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: CoffeeLoggerView(loggerViewModel: LoggerViewModel(context: context)), label: {
                VStack {
                    Text("Log")
                }
            })
            NavigationLink(destination: CoffeeReviewView(coffeeReviewViewModel: CoffeeReviewViewModel()), label: {
                VStack {
                    Text("Review")
                }
            })
            .navigationTitle("Coffee Tracker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
