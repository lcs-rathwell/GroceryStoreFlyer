//
//  Flyer.swift
//  GroceryStoreFlyer
//
//  Created by Jack William Rathwell on 2025-02-03.
//

import Foundation


struct Flyer {
    let departments: [Department]
}
 
struct Department: Identifiable {
    let id = UUID()
    let name: String
    let items: [FoodItem]
}
 
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: String
    let unit: String
}

let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips",
                    price: "10.99",
                    unit: "Per lb"
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
                    price: "11.99",
                    unit: "Per lb"
                ),
            ]
        ),
 
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: "22.99",
                    unit: "Per lb"
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: "15.99",
                    unit: "Per lb"
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: "3.33",
                    unit: "Per Can"
                ),
            ]
        ),
        
        
    ]
)
