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
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Spacer()
                    Image(systemName: "applelogo") // Replace with your calorie icon
                        .foregroundColor(.red)
                    Text("\(calories) cal")
                        .font(.subheadline)
                    Spacer()
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
    VStack {
        MealCardView(title: "2 eggs omelette with\nwhole wheat toast", 
                     calories: 490, 
                     carbs: 70, 
                     fats: 10, 
                     proteins: 30, 
                     type: .recommended)
        
        MealCardView(title: "Pasta with chicken", 
                     calories: 550, 
                     carbs: 85, 
                     fats: 12, 
                     proteins: 40, 
                     type: .consumed)
    }
}
