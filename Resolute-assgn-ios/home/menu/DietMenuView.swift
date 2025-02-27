//
//  MenuView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//

//
//  HomeView 2.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//

import SwiftUI

struct DietMenuView: View {
    @State private var selectedTab = "Meals"
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Today's diet plan")
            
            // Tab Bar
            HStack {
                tabButton(title: "Meals")
                tabButton(title: "Water")
                tabButton(title: "List view")
            }
           
           
            
            // Content based on selected tab
            ScrollView {
                switch selectedTab {
                case "Meals":
                    DietView() // Replace with your actual MealsView
                case "Water":
                    WaterIntakeView() // Replace with your actual WaterIntakeView
                case "List view":
                    Text("List")// Replace with your actual ListView
                default:
                    Text("Select a tab")
                }
            }
            .animation(.smooth, value: selectedTab)
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
                .padding(.vertical, 8)
        }
        .frame(maxWidth: .infinity)
    }
}



#Preview {
    DietMenuView()
}
