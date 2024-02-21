//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI
import SwiftData

@main
struct DemoSwiftUIApp: App {
    
    @State private var colorTheme = ColorTheme()
    
    var body: some Scene {
        WindowGroup {
            AppStateView()
//            ContentView()
//                .preferredColorScheme(colorTheme.theme)
//                .environment(colorTheme)
        }
        .modelContainer(DataController.container())
    }
}
