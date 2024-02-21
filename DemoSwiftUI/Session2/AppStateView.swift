//
//  AppStateView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 21.02.2024.
//

import SwiftUI

enum AppState: String, CaseIterable {
    case start = "Start"
    case session1 = "Session 1"
    case fullDemo = "Full Demo"
}

struct AppStateView: View {
    
    @State private var appState: AppState = .start
    @State private var colorTheme = ColorTheme()
    
    var body: some View {
        switch appState {
        case .start:
            Text("Select app state:")
                .font(.title2)
            Picker("Select state", selection: $appState) {
                ForEach(AppState.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.wheel)

        case .fullDemo:
            ContentView()
                .preferredColorScheme(colorTheme.theme)
                .environment(colorTheme)
            
        case .session1:
            InfoView()
        }
    }
}

#Preview {
    AppStateView()
}
