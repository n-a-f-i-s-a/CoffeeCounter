//
//  CoffeeLoggerView.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 21/4/2023.
//

import SwiftUI

struct CoffeeLoggerView: View {
    @ObservedObject var loggerViewModel: LoggerViewModel
    
    var body: some View {
            VStack {
                Stepper {
                    Image(systemName: "mug.fill")
                } onIncrement: {
                    loggerViewModel.increment()
                } onDecrement: {
                    loggerViewModel.decrement()
                }
                Text("You had ^[\(loggerViewModel.cupCounter) cup](inflect: true)")
            }
            .padding()
        }
}

struct CoffeeLoggerView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeLoggerView(loggerViewModel: LoggerViewModel())
    }
}
