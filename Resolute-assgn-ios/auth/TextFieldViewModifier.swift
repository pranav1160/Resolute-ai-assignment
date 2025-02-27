//
//  TextFieldViewModifier.swift
//  ThreadsTut
//
//  Created by Pranav on 13/02/25.
//
import SwiftUI

struct TextFieldViewModifier:ViewModifier{
    func body(content:Content)->some View{
        content
            .textInputAutocapitalization(.never)
            .padding()
            .frame(width: 350, height: 40)
            .background(Color(.systemGray6)) // Light gray background
            .cornerRadius(10) // Rounded corners
            .padding(.horizontal, 24)
    }
}
