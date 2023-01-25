//
//  ProfileView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI
import SpriteKit

struct ProfileView: View {

    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                SpriteView(scene: StarsScene.getScene(size: geo.size))
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            .ignoresSafeArea()
            
            Button("Tap me") {
                showingAlert = true
            }
            .font(.title)
            .foregroundColor(.white)
            .alert("SwiftUI is amazing!", isPresented: $showingAlert) {
                Button("Clear", role: .cancel) { }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
