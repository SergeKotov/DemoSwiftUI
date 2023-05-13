//
//  AppInStore.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 12.05.2023.
//

import Foundation

struct AppInStore {
    let title: String
    let imageName: String
    let url: URL
    
    static let data = [
        Self(title: "Helius' - full of life\nOne thinks ahead",
             imageName: "Helius180",
             url: URL(string: "itms-apps://itunes.apple.com/app/id1338472119")!),
        
        Self(title: "Memokeys\nThe best way to memorize words",
             imageName: "Memokeys180",
             url: URL(string: "itms-apps://itunes.apple.com/app/memokeys/id6447063232")!)
    ]
}
