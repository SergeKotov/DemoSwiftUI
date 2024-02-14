//
//  QuizQuestionView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct QuizQuestionView: View {
        
    @Binding var quizzing: Bool
    @Binding var questNumber: Int
    @Binding var wrongCount: Int
    
    @State private var isCorrect = false
    @State private var showingResult = false
    
    let quizCount: Int
    
    var question: CourseQuestion
    
    var body: some View {
        VStack {
            Text("Вопрос: ") +
            Text(String(questNumber+1))
                .foregroundColor(.blue)
                .bold()
            
            Spacer()
            
            Text(question.text)
                .font(.title3)
            
            Spacer()
            
            ForEach(question.answers, id: \.self) { variant in
                Button(variant) {
                    check(variant)
                    if !isCorrect {
                        wrongCount += 1
                    }
                    showingResult = true
                }
                .alert(isCorrect ? "Верно!" : "Неверно", isPresented: $showingResult) {
                    Button("Дальше", role: .cancel) {
                        if questNumber < quizCount-1 {
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
    
    func check(_ variant: String) {
        let ind = question.answers.firstIndex(of: variant) ?? -1
        isCorrect = question.correct.contains(ind)
    }
}

#Preview {
    QuizQuestionView(quizzing: .constant(true), questNumber: .constant(1), wrongCount: .constant(0), quizCount: 8, question: CourseData.quizData["01"]![0])
}
