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
                    Text("\(currentFoodItem.name)")
                        .font(.title)
                    Image(currentFoodItem.image)
                        .resizable()
                        .scaledToFit()
                        .overlay(alignment: .topTrailing) {
                            Text("\(currentFoodItem.price.formatted(.currency(code: "CAD")))\(currentFoodItem.unit)")
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .rotationEffect(Angle(degrees: +10))
                                .offset(x:25,y:-35)
                            Text("\(currentFoodItem.price.formatted(.currency(code: "CAD")))\(currentFoodItem.unit)")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .rotationEffect(Angle(degrees: +10))
                                .offset(x:25,y:-38)
                            Image("red-circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width:200)
                                .offset(x:25, y:-35)
                                
                        }

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


