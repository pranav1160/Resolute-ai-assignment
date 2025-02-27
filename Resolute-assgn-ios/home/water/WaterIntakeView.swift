//
//  WaterIntakeView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 28/02/25.
//


import SwiftUI

struct WaterIntakeView: View {
    let totalGlasses = 20
    let consumedGlasses = 2 // Change this dynamically based on user input
    
    var body: some View {
        VStack {
            // Tab bar
            HStack {
                Text("Meals")
                Spacer()
                Text("Water")
                    .foregroundColor(.red)
                    .underline()
                Spacer()
                Text("List view")
            }
            .font(.headline)
            .padding()

            // Water Glass Grid
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 5), spacing: 10) {
                ForEach(0..<totalGlasses, id: \.self) { index in
                    Image(index < consumedGlasses ? "blueGlass" : "grayGlass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                }
            }
            .padding()

            // Legend
            HStack {
                Image("grayGlass")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Yet to consume")
                
                Spacer()
                
                Image("blueGlass")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Consumed")
            }
            .padding()

            // Warning Message
            if consumedGlasses < 8 { // Example condition for low water intake
                HStack {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundColor(.red)
                    Text("Intake of more water suggested.")
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 1))
                .padding()
            }
        }
    }
}

struct WaterIntakeView_Previews: PreviewProvider {
    static var previews: some View {
        WaterIntakeView()
    }
}
