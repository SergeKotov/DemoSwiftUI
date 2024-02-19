//
//  GroupBoxWrapper.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.02.2024.
//

import SwiftUI

struct GroupBoxWrapper: ViewModifier {
    
    let text: String
    
    func body(content: Content) -> some View {
        GroupBox(text) {
            content
        }
    }
}

extension View {
    func groupBoxed(title text: String) -> some View {
        modifier(GroupBoxWrapper(text: text))
    }
}
