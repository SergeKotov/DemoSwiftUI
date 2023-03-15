//
//  AnimatedView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.03.2023.
//

import SwiftUI

struct AnimatedView: View {
    
    @State private var scale = 1.0
    
    let anima = Animation.interpolatingSpring(mass: 0.5, stiffness: 5, damping: 0.5, initialVelocity: 10)
    
    var body: some View {
        Image("teo")
            .resizable()
            .frame(width: 160, height: 160)
            .cornerRadius(80)
            .shadow(radius: 12)
            .padding(.top, 20)
            .scaleEffect(scale)
            .animation(.easeOut, value: scale)
            .onTapGesture {
                self.scale *= 1.1
            }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedView()
    }
}
