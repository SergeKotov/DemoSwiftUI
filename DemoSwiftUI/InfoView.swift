//
//  InfoView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 23.01.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        // navigation view for master - details architecture
        NavigationView {
            // show the list of sample data
            List(Post.data) { post in                    
                NavigationLink {
                    // link to details view
                    InfoDetailsView(post: post)
                } label: {
                    // view to represent one row of data with image and title
                    InfoRowView(post: post)
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
