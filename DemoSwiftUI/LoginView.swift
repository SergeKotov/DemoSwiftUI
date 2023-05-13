//
//  LoginView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var logged: Bool
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            // beautiful color background
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, angle: Angle(radians: 1))
                .ignoresSafeArea(edges: .top)
            
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
                    SecureField("Password", text: $password)
                        .modifier(TextFielder())
                }
                .cornerRadius(12)
                .padding(.top, 60)
                .padding()
                
                // login button
                Button(action: {
                    // no authentication actually, logged allways
                    self.logged = true
                }) {
                    Text("Log In")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(logged: .constant(false))
    }
}
