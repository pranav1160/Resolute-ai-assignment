//  AuthButtonModifier.swift
//  ThreadsTut
//
//  Created by Pranav on 13/02/25.
//
import SwiftUI

struct AuthButtonModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(width: 324, height: 44) // Set fixed size
            .background(Color.appred)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
