//
//  SwiftQuiz.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 05.02.2024.
//

import Foundation
import SwiftData

@Model
class SwiftQuiz {
    let partId: String
    let date: Date
    let questionCount: Int
    let passedCount: Int
    let duration: Int // seconds
    
    init(partId: String, date: Date = .now, questionCount: Int, passedCount: Int, duration: Int) {
        self.partId = partId
        self.date = date
        self.questionCount = questionCount
        self.passedCount = passedCount
        self.duration = duration
    }
}
