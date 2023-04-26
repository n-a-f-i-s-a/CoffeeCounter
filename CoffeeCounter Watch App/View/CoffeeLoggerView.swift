//
//  CoffeeLoggerView.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import SwiftUI

struct CoffeeLoggerView: View {
    @StateObject var loggerViewModel: LoggerViewModel
    @FetchRequest(
        sortDescriptors: [],
        predicate: NSPredicate(format: "date == %@", Date().onlyDate)
    ) var coffee: FetchedResults<Coffee>
    
    var body: some View {
        VStack {
            Stepper {
                Image(systemName: "mug.fill")
            } onIncrement: {
                loggerViewModel.increment(coffee: coffee)
            } onDecrement: {
                loggerViewModel.decrement(coffee: coffee)
            }
            Text("You had ^[\(loggerViewModel.cupsSoFar) \("cup")](inflect: true)")
        }
        .padding()
        .onAppear {
            loggerViewModel.fetchCoffee(coffee: coffee)
        }
    }
}

struct CoffeeLoggerView_Previews: PreviewProvider {
    static var previews: some View {
        let coreDataService = CoreDataController()
        CoffeeLoggerView(loggerViewModel: LoggerViewModel(context: coreDataService.container.viewContext))
    }
}
