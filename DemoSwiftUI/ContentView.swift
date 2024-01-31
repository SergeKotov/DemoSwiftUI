//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLogin = false
    
    var body: some View {
        // tab bar with view items
        TabView() {
            // if user is logged show the profile-view, login-view otherwise
            if isLogin {
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill.checkmark")
                    }
            } else {
                LoginView(logged: $isLogin)
                    .tabItem {
                        Label("Login", systemImage: "person")
                    }
            }
            
            EarthView()
                .tabItem {
                    Label("ЗD Planet", systemImage: "globe.europe.africa")
                }
            
            InfoView()
                .tabItem {
                    Label("Anthropology", systemImage: "globe")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
        }
    }
}

#Preview {
    ContentView()
}
