//
//  DepertmentsListView.swift
//  GroceryStoreFlyer
//
//  Created by Jack William Rathwell on 2025-02-03.
//

import SwiftUI

struct DepertmentsListView: View {
    var body: some View {
        NavigationStack {
            
            List (thisWeeksFlyer.departments) { currentDepartment in
                
                NavigationLink {
                    DepartmentDetailView(depertmentToShow: currentDepartment) } label: { Text(currentDepartment.name)
                }
              
            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    DepertmentsListView()
}
