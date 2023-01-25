//
//  InfoDetails.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 24.01.2023.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(post.subtitle)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.indigo)
                
                Divider()
                
                Text(post.description)
                
                Spacer()                
            }
            .padding()
        }
        .navigationTitle(post.title)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGray6))
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: data[0])
    }
}
