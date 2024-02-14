//
//  EarthView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 11.05.2023.
//

import SwiftUI
import SceneKit

struct EarthView: View {
        
    var body: some View {
        // Earth view done by 3D the SceneKit framework
        SceneView(scene: PlanetScene(), options: [.allowsCameraControl])
            .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    EarthView()
}
