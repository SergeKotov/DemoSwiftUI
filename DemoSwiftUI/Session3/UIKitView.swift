//
//  UIKitView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 29.05.2023.
//

import SwiftUI

struct UIKitView: View {
    
    @State var text = attributedString
    
    var body: some View {
        TextView(text: $text)
    }
}

struct UIKitView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitView()
    }
}


struct TextView: UIViewRepresentable {
    
    @Binding var text: NSMutableAttributedString
    
    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}
