//
//  MealCardView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//


import SwiftUI

struct FoodCardView: View {
    let title: String
    let calories: Int
    let carbs: Int
    let fats: Int
    let proteins: Int
    let type: MealType // Enum to distinguish between Recommended and Consumed
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(type.rawValue)
                .font(.headline)
                .foregroundColor(type == .recommended ? .green : .red)
            
            VStack(spacing: 10) {
                HStack {
                    Text(title)
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    VStack {
                        
                        Image(.calc) // Replace with your calorie icon
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        Text("\(calories) cal")
                            .font(.subheadline)
                        
                    }
                }
                HStack(spacing: 20) {
                    NutritionView(label: "Carbs", value: carbs, color: .red)
                    NutritionView(label: "Fats", value: fats, color: .yellow)
                    NutritionView(label: "Proteins", value: proteins, color: .blue)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray.opacity(0.3), lineWidth: 1))
        }
        .padding()
    }
}

// Enum for Meal Type
enum MealType: String {
    case recommended = "Recommended"
    case consumed = "Consumed"
}

// Subview for Nutrient Values
struct NutritionView: View {
    let label: String
    let value: Int
    let color: Color

    var body: some View {
        VStack {
            Text("\(value)gm \(label)")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.black)
            
            Rectangle()
                .frame(width: 50, height: 3)
                .foregroundColor(color)
        }
    }
}

// Preview
#Preview {
    
        FoodCardView(
            title: "2 eggs ommelete with toast",
            calories: 23,
            carbs: 23,
            fats: 23,
            proteins: 34,
            type: .consumed
        )
    
}
