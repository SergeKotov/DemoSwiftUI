//
//  CoursePart.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 05.02.2024.
//

import Foundation
import SwiftData

@Model
class CoursePart {
    var id: String
    var title: String
    var passed: Bool
    var date: Date?
    var count: Int
    var wrong: Int
    @Relationship(deleteRule: .cascade) var cells = [CourseCell]()

    init(id: String, title: String, count: Int, passed: Bool = false, date: Date? = nil) {
        self.id = id
        self.title = title
        self.passed = passed
        self.date = date
        self.count = count
        wrong = count
    }
}
