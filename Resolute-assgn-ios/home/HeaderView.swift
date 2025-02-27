//
//  HeaderView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 27/02/25.
//


import SwiftUI

struct HeaderView: View {
    var title: String
    var icon: Image?
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundStyle(.white)
                .padding(.horizontal)
            
            Spacer()
            
            if let icon = icon {
                icon
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.horizontal)
            }
        }
        .frame(height: 44)
        .background(Color.red) // Replace with your app color
    }
}

#Preview {
    HeaderView(title: "Home", icon: Image(systemName: "bell.fill"))
}
