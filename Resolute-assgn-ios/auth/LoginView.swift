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
            //logo image
            Image(.twitter)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
            
            TextField("Enter your email", text: $emailText)
                .modifier(TextFieldViewModifier())
            SecureField("Enter your password", text: $passwdText)
                .modifier(TextFieldViewModifier())
            
            
            NavigationLink{
                RegistrationView()
            }label: {
                VStack{
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .bold()
                    
                }
                .padding()
                .frame(maxWidth: .infinity,alignment: .trailing)
                .padding(.horizontal,18)
            }
            
            
            //login button
            Button {
                print("Button Tapped!")
            } label: {
                Text("Login")
                    .modifier(AuthButtonModifier())
            }.padding()
            
            Spacer()
            
            Divider()
            
            NavigationLink{
                RegistrationView()
            }label: {
                HStack{
                    Text("Dont have an account?")
                    
                    Text("Sign up")
                        .bold()
                }
                .foregroundColor(.black)
                .font(.footnote)
                .padding()
                
                .cornerRadius(10)
            }
            
            
        }
    }
}

#Preview {
    LoginView()
}

