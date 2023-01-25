//
//  SettingsView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var notificationsOn = true
    @State private var darkOn = false
    
    @State private var sliderValue = 10.0
    @State private var isChanging = false
    
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $notificationsOn) {
                    Text("Push Notifications")
                }
                Toggle(isOn: $darkOn) {
                    Text("Dark Theme")
                }
            }
            
            Slider(value: $sliderValue, in: 0 ... 100) { changed in
                isChanging = changed
            }
            Text("Progress value: \(Int(sliderValue))")
                .foregroundColor(.secondary)
            
            Section {
                VStack(alignment: .leading) {
                    Text("\(isChanging ? "I Like to Move It" : "I see you")")
                        .font(.title2)
                        .foregroundColor(isChanging ? .red : .blue)
                    Text("Font: caption style")
                        .font(.caption)
                        .padding(.top)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
