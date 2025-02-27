//
//  NutrientData.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//
import Foundation

struct NutrientData: Identifiable {
    let id = UUID()
    let name: String
    let value: Double
    let type: String // "Recommended" or "Consumed"
    
   
}

let nutrientStats: [NutrientData] = [
    NutrientData(name: "Carbs", value: 75, type: "Recommended"),
    NutrientData(name: "Carbs", value: 90, type: "Consumed"),
    NutrientData(name: "Fats", value: 15, type: "Recommended"),
    NutrientData(name: "Fats", value: 30, type: "Consumed"),
    NutrientData(name: "Proteins", value: 35, type: "Recommended"),
    NutrientData(name: "Proteins", value: 20, type: "Consumed")
]
