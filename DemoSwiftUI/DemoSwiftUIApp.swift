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
        
    var body: some Scene {
        WindowGroup {
            AppStateView()
        }
        .modelContainer(DataController.container())
    }
}
