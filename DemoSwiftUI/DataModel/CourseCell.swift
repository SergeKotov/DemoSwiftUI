//
//  CourseCell.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 05.02.2024.
//

import SwiftData

typealias CourseKeyword = String

@Model
class CourseCell {
    var title: String
    var keywords: [CourseKeyword]

    init(title: String, keywords: [CourseKeyword]) {
        self.title = title
        self.keywords = keywords
    }
}
