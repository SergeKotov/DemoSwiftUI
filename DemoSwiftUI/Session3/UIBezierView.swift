//
//  UIBezierView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 29.05.2023.
//

import SwiftUI

struct UIBezierView: View {
    var body: some View {
        ZStack {
            Color(.systemYellow)
            BezierShape()
                .foregroundColor(.pink)
            Text("Free curved shape")
                .font(.title)
        }
        .ignoresSafeArea()
    }
}
struct BezierShape: Shape {
    
    var bezierPath: UIBezierPath {
        let varY = CGFloat(30)
        let deltaX = CGFloat(20)
        let height = CGFloat(300)
        let proLimit = 0.5
        
        let ground = UIBezierPath()
        let beginPoint = CGPoint(x: 0, y: 0)
        ground.move(to: beginPoint)
        
        // Create top surface
        let shelfX: CGFloat = 3
        var pointX: CGFloat = 0, pointY: CGFloat = 0
        var up = true
        
        var downToZero = false
        repeat {
            // Increment X coordinate
            pointX += deltaX
            
            // Calculate Y coordinate
            let proValue = (1.0 - (1.0 - proLimit) * pointY / height)
            let k: CGFloat = up ? 1.0 : -1.0
            let direction = chance(Float(proValue)) ? k : -k
            let valueY = direction * CGFloat.random(in: 0..<varY)
            pointY += valueY
            if pointY > height {
                pointY = height;
                pointX += shelfX * deltaX
                up = false
            } else {
                if pointY < 0 {
                    downToZero = true
                }
            }
            
            // Draw line
            ground.addLine(to: CGPoint(x: pointX, y: pointY))
        } while !downToZero
        
        // Create top
        ground.addLine(to: beginPoint)
        ground.close()
        return ground
    }
    
    func path(in rect: CGRect) -> Path {
        return Path(bezierPath.cgPath)
    }
}


#Preview {
    UIBezierView()
}

func chance(_ r: Float) -> Bool {
    guard r > 0 else { return false }
    guard r < 1 else { return true }
    
    let c = Float.random(in: 0...1)
    return c < r ? true : false
}
