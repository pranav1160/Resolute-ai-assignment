//
//  LoginView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 27/02/25.
//


//
//  LoginView.swift
//  ThreadsTut
//
//  Created by Pranav on 13/02/25.
//

import SwiftUI

struct LoginView: View {
    @State var emailText:String = ""
    @State var passwdText:String = ""
    var body: some View {
        VStack{
            Spacer()
            Text("Healthify")
                .foregroundStyle(.appred)
                .font(.system(size: 38, weight: .bold)) // Adjust the font size as needed
                .frame(width: 333, height: 36)          // Fixed dimensions (approximate)
                
            Spacer()
            
            
            VStack(alignment: .leading){
                Text("Username")
                
                TextField("Enter your username", text: $emailText)
                    .modifier(TextFieldViewModifier())
                
                Text("Password")
                
                SecureField("Enter your password", text: $passwdText)
                    .modifier(TextFieldViewModifier())
                
                Text("Forgot Password")
                    .foregroundStyle(.blue)
                    .font(.subheadline)
            }
            .padding(.horizontal,30)
            .padding(.bottom,20)
            
            
            //login button
            Button {
                print("Button Tapped!")
            } label: {
                Text("Login")
                    .modifier(AuthButtonModifier())
            }.padding()
            
            
            NavigationLink{
                FingerPrintView()
            }label: {
               //fingerprint logo
                HStack(spacing: 8) { // Adjust spacing as needed
                    Image(.fingerstamp)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    Text("Login with Fingerprint")
                        .fontWeight(.semibold)
                    
                }
                .modifier(FingerAuthButtonModifier())
            }
            
            Spacer()
            
            //logo image
            Image(.stamp)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
            
            Spacer()
            
            
            
            
            
            
            
        }
    }
}

#Preview {
    LoginView()
}

