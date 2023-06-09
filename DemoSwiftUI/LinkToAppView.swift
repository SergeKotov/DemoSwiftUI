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
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .frame(width: 45, height: 45)
                Text(app.title)
                Spacer()
            }
        }
    }
}

struct LinkToAppView_Previews: PreviewProvider {
    static var previews: some View {
        LinkToAppView(toggled: true)
    }
}
