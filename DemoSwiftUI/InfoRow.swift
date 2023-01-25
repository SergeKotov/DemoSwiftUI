//
//  InfoRow.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 24.01.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            Text(post.title)

            Spacer()
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: data[0])
    }
}
