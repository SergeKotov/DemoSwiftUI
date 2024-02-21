//
//  EffectSandbox.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 19.02.2024.
//

import SwiftUI
import SpriteKit

struct EffectSandbox: View {
    
    @State private var range = 1.0
    
    let startDate = Date()
    
    var shader: Shader {
        switch range {
        case 0...1:
            ShaderLibrary.checkerboard(.float(5/range), .color(.gray))
        default:
            ShaderLibrary.noise(.float(startDate.timeIntervalSinceNow))
        }
    }
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                    SpriteView(scene: StarsScene(size: geo.size))
                        .frame(width: geo.size.width, height: geo.size.height)
            }
            .ignoresSafeArea(edges: [.top])
            
            VStack {
                TimelineView(.animation) { context in
                    Image("teo")
                        .resizable()
                        .modifier(ImageStyler(dim: 250))
                        .visualEffect { content, proxy in
                            content
                                .distortionEffect(ShaderLibrary.complexWave(
                                    .float(startDate.timeIntervalSinceNow),
                                    .float2(proxy.size),
                                    .float(range),
                                    .float(4),
                                    .float(5)
                                ), maxSampleOffset: .zero)
                        }
                }
                
                TimelineView(.animation) { context in
                    Image(systemName: "dog.fill")
                        .font(.system(size: 200))
                        .colorEffect(shader)
                }
                
                Slider(value: $range, in: 0.2...1.5)
                    .padding([.horizontal, .bottom])
            }
        }
    }
}

#Preview {
    EffectSandbox()
}
