//
//  LoginView.swift
//  instaCloneApp
//
//  Created by Efe on 1.08.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            Spacer()
            Image("instagram")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 100)
            
            VStack{
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            Button{
                print("LOGIN BUTTON")
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("buttonTextColor"))
                    
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color("buttonTextColor"), lineWidth: 1)
            )
            .padding(.horizontal, 24)
            
            
            Button {
                print("FORGET PASSWORD")
            } label: {
                Text("Forget Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 24)
                
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            HStack{
                Rectangle()
                    .frame(height: 0.5)
                Text("OR")
                Rectangle()
                    .frame(height: 0.5)
            }
            .padding(.horizontal, 24)
            .foregroundStyle(.gray)
            
            HStack{
                Image("facebook")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text("Continue with Facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
            }
            .padding(.top, 8)
            
            Spacer()
            
            Divider()
            NavigationLink{
                Text("Sign up")
            } label: {
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
            }
            .padding(.vertical, 16)
            
        }
    }
}

#Preview {
    LoginView()
}
