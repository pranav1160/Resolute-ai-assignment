import SwiftUI

struct MealCardView: View {
    var mealName: String
    var time: String
    var description: String
    var calories: String
    var mealIcon: String
    var calorieIcon: String
    
    var body: some View {
        HStack {
            // Meal Icon
            Image(systemName: mealIcon)
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
                Image(systemName: calorieIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red)
                
                Text("\(calories) cal")
                    .font(.subheadline)
                    .bold()
            }
        }
        .padding()
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
        mealIcon: "applelogo", // Replace with actual SF Symbol or custom asset
        calorieIcon: "calculator.fill" // Replace with SF Symbol
    )
}
