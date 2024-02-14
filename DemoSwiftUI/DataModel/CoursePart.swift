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
    let id: String
    var title: String
    var passed: Bool
    var date: Date?
    @Relationship(deleteRule: .cascade) var cells = [CourseCell]()

    init(id: String, title: String, passed: Bool = false, date: Date? = nil) {
        self.id = id
        self.title = title
        self.passed = passed
        self.date = date
    }
}
