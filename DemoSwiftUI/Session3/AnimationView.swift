//
//  AnimationView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 29.05.2023.
//

import SwiftUI

struct AnimationView: View {
   
    @State private var scale = 1.0
     
    var body: some View {
        Image("teo")
            .resizable()
            .frame(width: 160, height: 160)
            .cornerRadius(80)
            .shadow(radius: 12)
            .scaleEffect(scale)
        // try: .rotationEffect(Angle(radians: scale))
            .animation(.easeOut, value: scale)
        // try:.interpolatingSpring(mass: 0.5, stiffness: 0.5, damping: 0.5, initialVelocity: 10)
            .onTapGesture {
//                withAnimation(.easeOut) { // альтернативный способ для animation
                    scale *= CGFloat.random(in: 0.6...1.8)
//                }
            }
    }
}


#Preview {
    AnimationView()
}
