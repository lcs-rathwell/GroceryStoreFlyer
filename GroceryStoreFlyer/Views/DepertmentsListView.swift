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
            
            List {
                Text("Butcher's best")
                Text("Seafood")
            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    DepertmentsListView()
}
