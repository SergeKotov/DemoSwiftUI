//
//  StarsScene.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 24.01.2023.
//

import SpriteKit

// A simple example of SpriteKit's scene with two shaders

final class StarsScene: SKScene {
        
    override func didMove(to view: SKView) {
        
        let bg = SKSpriteNode(color: .clear, size: size)

        let width = Float(size.width)
        let height = Float(size.height)
        let v3 = vector_float3(width, height, Float(0.0))
        let iResolution = SKUniform(name: "iResolution", vectorFloat3: v3)
        let randomPos = vector_float2(
            width * Float.random(in: 0...1),  // x
            height * Float.random(in: 0...1)  // y
        )
        let uniforms: [SKUniform] = [
            iResolution,
            SKUniform(name: "iMouse", vectorFloat2: randomPos),
            SKUniform(name: "iter", float: Float(10)),
            SKUniform(name: "formuparam", float: Float(0.35)),
            SKUniform(name: "speed", float: Float(0.1))
        ]
        let code = starsShader // try: warpShader

        bg.shader = SKShader(source: code, uniforms: uniforms)
        bg.position = CGPoint(x: size.width/2, y: size.height/2)
        
        self.addChild(bg)
    }
}
