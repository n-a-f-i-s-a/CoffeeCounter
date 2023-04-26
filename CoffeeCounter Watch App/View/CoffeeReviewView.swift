//
//  CoffeeReviewView.swift
//  CoffeeCounter Watch App
//
//  Created by Nafisa Rahman on 27/4/2023.
//

import Charts
import SwiftUI

struct CoffeeReviewView: View {
    @ObservedObject var coffeeReviewViewModel: CoffeeReviewViewModel
    @FetchRequest(
        sortDescriptors: []
    )
    var coffee: FetchedResults<Coffee>
    
    
    var body: some View {
        ScrollView(.horizontal) {
            Chart(coffee) { coffee in
                BarMark(
                    x: .value("Date", coffeeReviewViewModel.makeXvalue(coffee)),
                    y:.value("Coffee",coffeeReviewViewModel.makeYvalue(coffee))
                )
                .annotation(position: .overlay) {
                    Text("\(coffee.cups)")
                        .font(.subheadline)
                }
                .foregroundStyle(coffee.cups > 4 ? .red : .green)
            }
            .chartYAxisLabel(position: .leading,alignment: .center){
                Text("cups")
                    .foregroundColor(.red)
                    .font(.headline)
            }
            .chartYScale(domain: [0, 20])
            .chartYAxis {
                AxisMarks(position: .leading, values: .automatic(desiredCount: 5))
            }
            .frame(minWidth: 200, maxWidth: .infinity)
            .padding(5)
        }
    }
}

struct CoffeeReviewView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeReviewView(coffeeReviewViewModel: CoffeeReviewViewModel())
    }
}
