//
//  ContentView.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: CoffeeLoggerView(loggerViewModel: LoggerViewModel()), label: {
                VStack {
                    Text("Log")
                }
            })
            NavigationLink(destination: Text("Daily"), label: {
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
