//
//  MyTabView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 01.04.2024.
//

import SwiftUI

struct MyTabView: View {
    
    @AppStorage("tab") private var selection = 1
        
    var body: some View {
        // tab bar with view items
        TabView(selection: $selection) {
            InfoView()
                .tabItem {
                    Label("Anthropology", systemImage: "leaf.fill")
                }
                .tag(1)
            
            SomeView()
                .tabItem {
                    Label("Sheet", systemImage: "menucard")
                }
                .tag(2)
            
            EarthView()
                .tabItem {
                    Label("ЗD Planet", systemImage: "globe.europe.africa")
                }
                .tag(3)
        }
    }
}

#Preview {
    MyTabView()
}
