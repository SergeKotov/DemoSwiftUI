//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        // tab bar with view items
        TabView() {
            CourseView()
                .tabItem {
                    Label("SwiftUI", systemImage: "swift")
                }
            
            Text("Statistics")
                .tabItem {
                    Label("Statistics", systemImage: "chart.bar.xaxis")
                }
            
            EarthView()
                .tabItem {
                    Label("ЗD Planet", systemImage: "globe.europe.africa")
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
