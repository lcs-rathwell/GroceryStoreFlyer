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
                Text("\(currentFoodItem.name), \(currentFoodItem.price)")
            }
        }
            .listStyle(.plain)
            .navigationTitle(depertmentToShow.name)
    }
}

#Preview {
    NavigationStack {
        DepartmentDetailView(depertmentToShow: thisWeeksFlyer.departments[0])
    }
}


