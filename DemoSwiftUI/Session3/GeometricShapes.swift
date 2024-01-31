//
//  GeometricShapes.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 29.05.2023.
//

import SwiftUI

struct GeometricShapes: View {
    var body: some View {
        VStack {
              Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 100)
                .padding()
              RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.yellow)
                .frame(width: 100, height: 100)
                .padding()
              Capsule()
                .fill(.green)
                .frame(width: 150, height: 70)
                .padding()
                .overlay(Label("Globus", systemImage: "globe"))
                .onTapGesture { print("touched") }
              Ellipse()
                .fill(.brown)
                .frame(width: 150, height: 70)
                .padding()
              Circle()
                .fill(.orange)
                .frame(width: 100, height:100)
                .padding()
        }
    }
}

#Preview {
    GeometricShapes()
}
