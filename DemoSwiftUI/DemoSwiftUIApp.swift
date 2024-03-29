//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

@main
struct DemoSwiftUIApp: App {
    
    @State private var colorTheme = ColorTheme()
        
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(colorTheme.theme)
                .environment(colorTheme)
        }
        .modelContainer(DataController.container())
    }
}
