//
//  TextFieldModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/2/24.
//

import SwiftUI

struct TextFieldModule: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 24) {
            
            Image("messenger-app-icon")
                .resizable()
                .frame(width: 180, height: 180)
            
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))  // Gives it nice faded grey look
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)  // keeps everything lowercased -> makes sense for email field
    //                .autocorrectionDisabled()
                        
                
                SecureField("Password", text: $password)  // built-in password functionality, ex: 'autogenerate key', 'caps-lock on', 'hidden characters'
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))  // Gives it nice faded grey look
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Button {
                print("Email is \(email)")  // testing functionality
                print("Password is \(password)")
            } label: {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 48)
                    .background(.blue)
                    .cornerRadius(10)
            }

            
        }
        .padding()
    }
}

#Preview {
    TextFieldModule()
}
