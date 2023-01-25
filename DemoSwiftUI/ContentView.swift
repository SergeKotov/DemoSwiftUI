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
        TabView() {
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
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
            InfoView()
                .tabItem {
                    Label("Anthropology", systemImage: "globe")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
