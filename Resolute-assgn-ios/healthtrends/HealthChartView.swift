//
//  ChartView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//


import SwiftUI
import Charts

struct HealthChartView: View {
    let nutrientData = [
        ("Carbs", 70),
        ("Fats", 10),
        ("Proteins", 30)
    ]
    
    let dailyIntakeData = [
        ("Breakfast", 400),
        ("Lunch", 600),
        ("Dinner", 500),
        ("Snacks", 300)
    ]
    
    let calorieTrendData = [
        (day: "Mon", calories: 1800),
        (day: "Tue", calories: 2000),
        (day: "Wed", calories: 1900),
        (day: "Thu", calories: 2100),
        (day: "Fri", calories: 2200),
        (day: "Sat", calories: 2300),
        (day: "Sun", calories: 2000)
    ]
    
    var body: some View {
        VStack {
            // Bar Chart for Macros
            Text("Macronutrient Breakdown")
                .font(.headline)
            Chart(nutrientData, id: \.0) { nutrient in
                BarMark(
                    x: .value("Nutrient", nutrient.0),
                    y: .value("Amount", nutrient.1)
                )
                .foregroundStyle(by: .value("Nutrient", nutrient.0))
            }
            .frame(height: 200)

            // Pie Chart for Daily Intake
            Text("Daily Calorie Intake")
                .font(.headline)
            Chart(dailyIntakeData, id: \.0) { meal in
                SectorMark(
                    angle: .value("Calories", meal.1),
                    innerRadius: .ratio(0.5)
                )
                .foregroundStyle(by: .value("Meal", meal.0))
            }
            .frame(height: 200)

            // Line Chart for Weekly Calories
            Text("Weekly Calorie Trend")
                .font(.headline)
            Chart(calorieTrendData, id: \.day) { data in
                LineMark(
                    x: .value("Day", data.day),
                    y: .value("Calories", data.calories)
                )
                .foregroundStyle(.blue)
            }
            .frame(height: 200)
        }
        .padding()
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        HealthChartView()
    }
}
