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
        Self(title: "Memokeys\nThe best way to memorize words",
             imageName: "Memokeys",
             url: URL(string: "itms-apps://itunes.apple.com/app/memokeys/id6447063232")!),
        
        Self(title: "Swift-Way\nThe swift way to start up a career",
             imageName: "SwiftWay",
             url: URL(string: "itms-apps://itunes.apple.com/ru/app/swiftway/id6473262255")!),
    ]
}
