//
//  InfoView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(data) { post in
                    
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                   InfoRow(post: post)
                }
            }
            .navigationTitle("Anthropology")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
