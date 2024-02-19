//
//  LinkToAppView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 12.05.2023.
//

import SwiftUI

struct LinkToAppView: View {
    
    var toggled: Bool
    
    private var app: AppInStore {
        let index = toggled ? 0 : 1
        return AppInStore.data[index]
    }
    
    var body: some View {
        // link to the AppStore
        Link(destination: app.url) {
            HStack {
                Image(app.imageName)
                    .resizable()
                    .modifier(ImageStyler(dim: 60))
                
                Text(app.title)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LinkToAppView(toggled: true)
}
