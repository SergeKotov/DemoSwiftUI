//
//  PartImageView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct PartImageView: View {
    
    let id: String
    let dim: CGFloat
    
    var body: some View {
        Image(id)
            .resizable()
            .frame(width: dim, height: dim)
            .cornerRadius(8)
            .shadow(radius: 6)
    }
}

#Preview {
    PartImageView(id: "01", dim: 60)
}
