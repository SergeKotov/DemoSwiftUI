//
//  ImageStyler.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 15.02.2024.
//

import SwiftUI

struct ImageStyler: ViewModifier {
    
    let dim: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: dim, height: dim)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .shadow(radius: 6)
    }
}
