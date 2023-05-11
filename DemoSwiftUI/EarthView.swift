//
//  EarthView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 11.05.2023.
//

import SwiftUI
import SceneKit

struct EarthView: View {
    
    let scene = PlanetScene()
    
    var body: some View {
        SceneView(scene: scene, options: [.allowsCameraControl])
            .ignoresSafeArea(edges: .top)
    }
}

struct EarthView_Previews: PreviewProvider {
    static var previews: some View {
        EarthView()
    }
}
