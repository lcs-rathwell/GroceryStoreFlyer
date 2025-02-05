//
//  DepartmentDetailView.swift
//  GroceryStoreFlyer
//
//  Created by Jack William Rathwell on 2025-02-03.
//

import SwiftUI

struct DepartmentDetailView: View {
    
    let depertmentToShow: Department
    
    var body: some View {
        VStack{
            List(depertmentToShow.items) { currentFoodItem in
                
                VStack {
                    Text("\(currentFoodItem.name), \(currentFoodItem.price.formatted(.currency(code: "CAD")))\(currentFoodItem.unit)")
                    Image(currentFoodItem.image)
                        .resizable()
                        .scaledToFit()
                        .overlay(
                            Image("red-circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            , alignment:.topTrailing)

                }
            }
            .listStyle(.insetGrouped)
        }
     
        .navigationTitle(depertmentToShow.name)
    }
}

#Preview {
    NavigationStack {
        DepartmentDetailView(depertmentToShow: thisWeeksFlyer.departments[0])
    }
}


