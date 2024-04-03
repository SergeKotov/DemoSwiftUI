//
//  InfoRowView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 24.01.2023.
//

import SwiftUI

// компонент - строка для списка (List)
struct InfoRowView: View {
    // модель данных, используется фото и заголовок
    var post: Post
    
    var body: some View {
        // горизонтольный контейнер
        HStack {
            // фото с модификаторами изображения
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            
            // заголовок поста
            Text(post.title)
            
            // невидимый Spacer толкает другие элементы влево, так как расположен последним в HStack
            Spacer()
        }
    }
}

#Preview {
    InfoRowView(post: Post.data[1])
}
