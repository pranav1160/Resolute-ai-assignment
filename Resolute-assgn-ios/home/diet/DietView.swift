//
//  HomeView 2.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//


import SwiftUI

struct DietView: View {
    @State private var selectedTab = "Meals"
    @State private var selectedDay = "S" // Default selected day
    
    let days = ["S", "M", "T", "W", "Th", "F", "St"]
    
    var body: some View {
        
        VStack {
            // Tab Bar
            HStack {
                tabButton(title: "Meals")
                tabButton(title: "Water")
                tabButton(title: "List view")
            }
            .padding(.top)
            
            // Days of the week selection
            HStack {
                ForEach(days, id: \.self) { day in
                    Text(day)
                        .frame(width: 32, height: 32)
                        .background(day == selectedDay ? Color.red : Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .foregroundColor(day == selectedDay ? .white : .black)
                        .onTapGesture {
                            selectedDay = day
                        }
                        .padding(.horizontal,6)
                }
            }
            .padding()
            
            Text("Today, 2 Apr 2024")
                .font(.headline)
                .padding(.bottom, 10)
            
            // Circular Progress View
            ZStack {
                DietCircleProgressView(progress: 1) // Adjusted progress
                    .frame(width: 180, height: 180)
                
                VStack {
                    Text("690")
                        .font(.largeTitle)
                        .bold()
                    Text("/1640")
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text("Calories")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.bottom, 20)
            
            // Macronutrient Breakdown
            HStack(spacing: 30) {
                macroView(title: "Carbs", value: "340", color: .red, percentage: "49%")
                macroView(title: "Fats", value: "270", color: .yellow, percentage: "39%")
                macroView(title: "Proteins", value: "80", color: .blue, percentage: "12%")
            }
        }
    }
    
    // Tab Button
    private func tabButton(title: String) -> some View {
        Button(action: {
            selectedTab = title
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(selectedTab == title ? .red : .black)
                .underline(selectedTab == title, color: .red)
        }
        .frame(maxWidth: .infinity)
    }
    
    // Macronutrient View
    private func macroView(title: String, value: String, color: Color, percentage: String) -> some View {
        VStack {
            Text(value)
                .font(.title3)
                .bold()
                .foregroundColor(color)
            
            Text(title)
                .font(.subheadline)
            
            Text("(\(percentage))")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct DietCircleProgressView: View {
    var progress: CGFloat // 0.0 to 1.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.3), lineWidth: 14)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: [.red, .yellow, .blue]),
                        center: .center
                    ),
                    style: StrokeStyle(lineWidth: 14, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))
        }
    }
}

#Preview {
    DietView()
}
