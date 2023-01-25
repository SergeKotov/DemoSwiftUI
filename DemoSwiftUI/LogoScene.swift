//
//  LogoScene.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 24.01.2023.
//

import SpriteKit

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
        let code = """
            // Star Nest by Pablo RomÃ¡n Andrioli
            // This content is under the MIT License.
            
            #define volsteps 20
            #define stepsize 0.1

            #define zoom   0.800
            #define tile   0.850
            //#define speed  0.0025 // 0.002

            #define brightness 0.002
            #define darkmatter 0.300
            #define distfading 0.750
            #define saturation 0.750

            float SCurve (float value) {

                if (value < 0.5)
                {
                    return value * value * value * value * value * 16.0;
                }
                
                value -= 1.0;
                
                return value * value * value * value * value * 16.0 + 1.0;
            }

            void main() {
                int iterations = int(iter); // can't send int value by uniform
                
                //get coords and direction
                vec2 uv=gl_FragCoord.xy/iResolution.xy-.5;
                uv.y*=iResolution.y/iResolution.x;
                vec3 dir=vec3(uv*zoom,1.);
                float time=u_time*speed+.25;

                //mouse rotation
                float a1=.5+iMouse.x/iResolution.x*2.;
                float a2=.8+iMouse.y/iResolution.y*2.;
                mat2 rot1=mat2(cos(a1),sin(a1),-sin(a1),cos(a1));
                mat2 rot2=mat2(cos(a2),sin(a2),-sin(a2),cos(a2));
                dir.xz=dir.xz * rot1;
                dir.xy=dir.xy *rot2;
                vec3 from=vec3(1.,.5,0.5);
                from+=vec3(time*2.,time,-2.);
                from.xz=from.xz * rot1;
                from.xy=from.xy * rot2;
                
                //volumetric rendering
                float s=0.1,fade=1.;
                vec3 v=vec3(0.);
                for (int r=0; r<volsteps; r++) {
                    vec3 p=from+s*dir*.5;
                    p = abs(vec3(tile)-mod(p,vec3(tile*2.))); // tiling fold
                    float pa,a=pa=0.;
                    for (int i=0; i<iterations; i++) {
                        p=abs(p)/dot(p,p)-formuparam; // the magic formula
                        a+=abs(length(p)-pa); // absolute sum of average change
                        pa=length(p);
                    }
                    float dm=max(0.,darkmatter-a*a*.001); //dark matter
                    a = pow(a, 2.5); // add contrast
                    if (r>6) fade*=1.-dm; // dark matter, don't render near
                    //v+=vec3(dm,dm*.5,0.);
                    v+=fade;
                    v+=vec3(s,s*s,s*s*s*s)*a*brightness*fade; // coloring based on distance
                    fade*=distfading; // distance fading
                    s+=stepsize;
                }
                
                v=mix(vec3(length(v)),v,saturation); //color adjust
                
                vec4 C = vec4(v*.01,1.);
                
                     C.r = pow(C.r, 0.35);
                      C.g = pow(C.g, 0.36);
                      C.b = pow(C.b, 0.4);
                 
                vec4 L = C;
                
                    C.r = mix(L.r, SCurve(C.r), 1.0); // 1.0
                    C.g = mix(L.g, SCurve(C.g), 0.7); // 0.9
                    C.b = mix(L.b, SCurve(C.b), 0.3); // 0.6
                
                gl_FragColor = C;
            }
            """
        bg.shader = SKShader(source: code, uniforms: uniforms)
        bg.position = CGPoint(x: size.width/2, y: size.height/2)
        
        addChild(bg)
    }
    
    static func getScene(size: CGSize) -> SKScene {
        let scene = StarsScene()
        scene.size = size
        scene.scaleMode = .aspectFit
        return scene
    }
}
