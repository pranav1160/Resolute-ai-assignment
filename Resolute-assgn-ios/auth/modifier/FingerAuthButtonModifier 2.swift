//
//  AuthButtonModifier 2.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 27/02/25.
//


import SwiftUI

struct FingerAuthButtonModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(width: 324, height: 70) // Set fixed size
            .background(Color.appred)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
