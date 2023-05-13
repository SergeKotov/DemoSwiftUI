//
//  SettingsView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct SettingsView: View {
    // connect to actual color scheme in iOS environment
    @Environment(\.colorScheme) var colorScheme
    
    @State private var linkOn = false
    @State private var toggler = true
    
    @State private var sliderValue = 10.0
    @State private var isChanging = false
    
    var body: some View {
        ZStack {
            Color(.systemGray5)
            
            Form {
                Section {
                    // show one of two links to apps in the AppStore
                    Toggle("Show a secret link", isOn: $linkOn.animation())
                        .onChange(of: linkOn) { on in
                            if on {
                                // toogle between two links for every set on
                                toggler.toggle()
                            }
                        }
                    
                    if linkOn {
                        LinkToAppView(toggled: toggler)
                    }
                    
                    // presents current light / dark mode in iOS, connected dynamically
                    Text("iOS appearance: " + (colorScheme == .dark ? "dark mode" : "light mode"))
                        .padding(32)
                }
                
                // slider to change angle of color gradient bellow
                Slider(value: $sliderValue, in: 0 ... 100) { changed in
                    isChanging = changed
                }
                Text("Progress value: \(Int(sliderValue))")
                    .foregroundColor(.secondary)
                
                ZStack {
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, angle: Angle(radians: sliderValue/10))
                    
                    Text("\(isChanging ? "I Like to Move It" : "I see you")")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                BarChartView()
                    .frame(height: 300)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
