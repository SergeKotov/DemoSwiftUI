//
//  QuizView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 08.02.2024.
//

import SwiftUI

struct QuizView: View {
        
    let quiz: [CourseQuestion]
    
    @Binding var passed: Bool
    
    @State private var quizzing = true
    @State private var questNumber = 0
    @State private var wrongCount = 0
    
    var body: some View {
        if quizzing {
            QuizQuestionView(quizzing: $quizzing, questNumber: $questNumber, wrongCount: $wrongCount, quizCount: quiz.count, question: quiz[questNumber])
        } else {
            QuizResultView(passed: $passed, count: quiz.count, wrongCount: wrongCount)
        }
    }
}

#Preview {
    QuizView(quiz: CourseData.quizData["01"] ?? [], passed: .constant(false))
}
