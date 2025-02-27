//
//  TextFieldViewModifier.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 27/02/25.
//


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
            .foregroundStyle(.black)
            .textInputAutocapitalization(.never)
            .padding()
            .frame(width: 350, height: 40)
            .background(Color.white) // Light gray background
            .cornerRadius(8) // Rounded corners
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}
