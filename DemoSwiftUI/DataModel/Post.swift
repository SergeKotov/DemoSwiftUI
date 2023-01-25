//
//  Post.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 24.01.2023.
//

import SwiftUI

struct Post: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let description: String
    let image: Image
}
