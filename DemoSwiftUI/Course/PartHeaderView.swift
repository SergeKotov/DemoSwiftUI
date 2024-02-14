//
//  PartHeaderView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct PartHeaderView: View {
    
    var part: CoursePart
    
    @State private var showingQuiz = false
    @State private var testPassed = false
    
    var body: some View {
        VStack {
            HStack {
                PartImageView(id: part.id, dim: 60)
                
                Text(part.title)
                    .font(.title3)
                    .bold()
                Spacer()
            }
            HStack {
                Spacer()
                if part.passed {
                    Label {
                        Text(part.date?.formatted(date: .numeric, time: .omitted) ?? "")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    }
                } else {
                    Button("Пройти тест") {
                        showingQuiz.toggle()
                    }
                    .sheet(isPresented: $showingQuiz) {
                        QuizView(quiz: CourseData.quizData[part.id] ?? [], passed: $testPassed)
                    }
                }
            }
        }
        .padding([.leading, .trailing])
        .onChange(of: testPassed) {
            if testPassed {
                part.passed = true
                part.date = .now
            }
        }
    }
}

#Preview {
    PartHeaderView(part: DataController.previewCoursePart)
}
