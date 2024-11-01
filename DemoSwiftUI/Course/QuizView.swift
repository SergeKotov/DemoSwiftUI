//
//  QuizView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 08.02.2024.
//

import SwiftUI

struct QuizView: View {
            
    var part: CoursePart
    
    @State private var quizzing = true
    
    var quiz: [CourseQuestion] {
        CourseData.quizData[part.id] ?? []
    }
    
    var body: some View {
        if quizzing {
            QuizQuestionView(part: part, quizzing: $quizzing)
        } else {
            QuizResultView(passed: part.passed, count: quiz.count, wrong: part.wrong)
        }
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    QuizView(part: DataController.getPreviewCoursePart(container))
        .modelContainer(container)
}
