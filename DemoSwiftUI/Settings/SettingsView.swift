//
//  SettingsView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct SettingsView: View {
    // read actual color scheme from the environment
    @Environment(\.colorScheme) var colorScheme
    @Environment(ColorTheme.self) private var theme
    @State private var selectTheme = ColorTheme.Theme.default
    
    @AppStorage("linkToAppOn") private var linkOn = false
    @State private var toggler = true
    
    var body: some View {
        Form {
            Section {
                // show one of two links to apps in the AppStore
                Toggle("Show a secret link", isOn: $linkOn.animation())
                    .onChange(of: linkOn) {
                        if linkOn {
                            // toogle between two links for every set on
                            toggler.toggle()
                        }
                    }
                
                if linkOn {
                    LinkToAppView(toggled: toggler)
                }
            }
            
            Section {
                // presents current light / dark mode in iOS, connected dynamically
                Text("Color theme appearance: ") +
                Text("\(colorScheme == .dark ? "dark mode" : "light mode")").bold()
                
                Picker("Color theme", selection: $selectTheme.animation()) {
                    ForEach(ColorTheme.Theme.allCases, id: \.self) {
                        Text($0.rawValue).tag($0)
                    }
                }
                .pickerStyle(.segmented)
                .onChange(of: selectTheme) {
                    theme.current = selectTheme
                }
            }
            
            Section {
                // slider to change angle of the color gradient view bellow
                ColorGradientView()
            }
        }
    }
}

#Preview {
    SettingsView()
        .environment(ColorTheme())
}
