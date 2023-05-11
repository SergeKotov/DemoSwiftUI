//
//  SettingsView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State private var notificationsOn = true
    @State private var darkOn = false
    
    @State private var sliderValue = 10.0
    @State private var isChanging = false
    
    var body: some View {
        ZStack {
            Color(darkOn ? .black : .white)
            
            Form {
                Section {
                    Toggle("Push Notifications", isOn: $notificationsOn.animation())
                    if notificationsOn {
                        Text("Notifications enabled")
                    }
                    Toggle("Dark Theme", isOn: $darkOn.animation())
                }
                
                Section {
                    Text(colorScheme == .dark ? "iOS set in dark mode" : "iOS set in light mode")
                }
                
                Slider(value: $sliderValue, in: 0 ... 100) { changed in
                    isChanging = changed
                }
                Text("Progress value: \(Int(sliderValue))")
                    .foregroundColor(.secondary)
                
                ZStack {
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, angle: Angle(radians: sliderValue/10))
                        .ignoresSafeArea(edges: .top)
                    
                    Text("\(isChanging ? "I Like to Move It" : "I see you")")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .frame(height: 200)
            }
            .scrollContentBackground(.hidden)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
