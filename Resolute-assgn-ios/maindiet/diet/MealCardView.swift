//
//  MealCardView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//


import SwiftUI

struct MealCardView: View {
    var mealName: String
    var time: String
    var description: String
    var calories: String
    var mealIcon: UIImage
    var calorieIcon: UIImage
    
    var body: some View {
        HStack {
            // Meal Icon
            Image(uiImage:mealIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding()
                .background(Color.red.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.red)
            
            // Meal Details
            VStack(alignment: .leading) {
                Text(mealName)
                    .font(.headline)
                
                Text(time)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(description)
                    .font(.body)
                    .lineLimit(2)
            }
            .padding(.leading, 5)
            
            Spacer()
            
            // Calorie Info
            VStack {
                Image(uiImage: calorieIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.red)
                
                Text("\(calories) cal")
                    .font(.subheadline)
                    .bold()
            }
        }
        .padding(20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    MealCardView(
        mealName: "Breakfast",
        time: "8:00–8:30 AM",
        description: "2 eggs omelette with whole wheat toast",
        calories: "490",
        mealIcon: .food1, // Replace with actual SF Symbol or custom asset
        calorieIcon: .calc // Replace with SF Symbol
    )
}
