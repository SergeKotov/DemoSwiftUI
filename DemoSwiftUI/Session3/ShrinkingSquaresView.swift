//
//  ShrinkingSquaresView.swift
//  DemoSwiftUI
//  From "SwiftUI by example" by Paul Hudson
//

import SwiftUI

struct ShrinkingSquaresView: View {
    var body: some View {
        ShrinkingSquares()
            .stroke(lineWidth: 5)
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
    }
}

struct ShrinkingSquares: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for i in stride(from: 1, through: 150, by: 15.0) {
            let rect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
            let insetRect = rect.insetBy(dx: i, dy: i)
            path.addRect(insetRect)
        }
        return path
    }
}


#Preview {
    ShrinkingSquaresView()
}
