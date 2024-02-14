//
//  LoginView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct LoginView: View {
    
    enum Field: Hashable {
        case loginField
        case passwordField
    }
    
    @Binding var logged: Bool
    
    @State private var login: String = ""
    @State private var password: String = ""
    @FocusState private var focused: Field?
    
    var body: some View {
        ZStack {
            // beautiful color background
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, angle: Angle(radians: 1))
                .ignoresSafeArea(edges: .top)
                .onTapGesture {
                    // hide the keyboard
                    focused = nil
                }
            
            VStack {
                // avatar image
                Image("teo")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .cornerRadius(80)
                    .shadow(radius: 12)
                    .padding(.top, 20)
                
                // login and password text fields
                VStack(spacing: -0.5) {
                    TextField("Login", text: $login)
                        .modifier(TextFielder())
                        .focused($focused, equals: .loginField)
                    SecureField("Password", text: $password)
                        .modifier(TextFielder())
                        .focused($focused, equals: .passwordField)
                }
                .cornerRadius(12)
                .padding(.top, 60)
                .padding()
                
                // login button
                Button(action: {
                    if login.isEmpty {
                        focused = .loginField
                    } else if password.isEmpty {
                        focused = .passwordField
                    } else {
                        // no authentication actually, logged allways
                        self.logged = true
                    }
                }) {
                    Text( login.isEmpty || password.isEmpty ?
                          "Enter a login and password" : "Log In")
                        .frame(height: 50)
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color(.systemMint))
                .cornerRadius(12)
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView(logged: .constant(false))
}
