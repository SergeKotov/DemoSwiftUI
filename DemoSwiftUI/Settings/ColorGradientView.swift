//
//  ColorGradientView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 19.02.2024.
//

import SwiftUI

struct ColorGradientView: View {
    
    @AppStorage("progressValue") private var sliderValue = 10.0
    @State private var isChanging = false
    
    var body: some View {
        Slider(value: $sliderValue, in: 0 ... 100) { changed in
            isChanging = changed
        }
        Text("Progress value: \(Int(sliderValue))")
            .foregroundColor(.secondary)
        
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, angle: Angle(radians: sliderValue/10))
            
            Text("\(isChanging ? "I Like to Move It" : "I see you")")
                .font(.title2)
                .foregroundColor(.white)
        }
        .frame(height: 200)
    }
}

#Preview {
    ColorGradientView()
}
