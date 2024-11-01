//
//  QuizQuestionView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct QuizQuestionView: View {
    
    var part: CoursePart
        
    @Binding var quizzing: Bool
    
    @State private var questNumber = 1
    @State private var isCorrect = false
    @State private var showingResult = false
    
    var quiz: [CourseQuestion] {
        CourseData.quizData[part.id] ?? []
    }
        
    var question: CourseQuestion {
        quiz[questNumber-1]
    }
    
    var body: some View {
        VStack {
            Text("Вопрос: ") +
            Text(String(questNumber))
                .foregroundColor(.blue)
                .bold()
            
            Spacer()
            
            Text(question.text)
                .font(.title3)
            
            Spacer()
            
            ForEach(question.answers, id: \.self) { variant in
                Button(variant) {
                    check(variant)
                    updateData()
                    showingResult = true
                }
                .alert(isCorrect ? "Верно!" : "Неверно", isPresented: $showingResult) {
                    Button("Дальше", role: .cancel) {
                        if questNumber < quiz.count {
                            questNumber += 1
                        } else {
                            quizzing = false
                        }
                    }
                }
            }
            .padding()
        }
        .padding()
    }
    
    private func check(_ variant: String) {
        let ind = question.answers.firstIndex(of: variant) ?? -1
        isCorrect = question.correct.contains(ind)
    }
    
    private func updateData() {
        if questNumber == 1 {
            part.wrong = part.count
        }
        if isCorrect {
            part.wrong -= 1
        }
        if questNumber == quiz.count, part.wrong < 3 {
            part.passed = true
        }
        part.date = .now
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    QuizQuestionView(part: DataController.getPreviewCoursePart(container), quizzing: .constant(true))
        .modelContainer(container)
}
