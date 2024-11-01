//
//  AnimationView2.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 31.10.2024.
//

import SwiftUI

struct AnimationView2: View {
    @State private var isLoading = false
     
    var body: some View {
        ZStack {
            Text("Processing...")
                .bold()
                .offset(x: 0, y: -30)
            RoundedRectangle(cornerRadius: 3)
                .fill(Color(.systemGray4))
                .frame(width: 300, height: 6)
            RoundedRectangle(cornerRadius: 2)
                .fill(Color(.systemMint))
                .frame(width: 30, height: 8)
                .offset(x: isLoading ? 135 : -135, y: 0)
                .animation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true), value: isLoading)
        }
        .onAppear() {
            self.isLoading = true
        }
    }
}

#Preview {
    AnimationView2()
}
