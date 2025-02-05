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
        
        Text(depertmentToShow.name)
    }
}

#Preview {
    DepartmentDetailView(depertmentToShow: thisWeeksFlyer.departments[0])
}


