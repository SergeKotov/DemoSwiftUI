//
//  QuizResultView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct QuizResultView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let passed: Bool
    let count: Int
    let wrong: Int
    
    var body: some View {
        ZStack {
            Color(passed ? .systemGreen : .systemRed)
                .ignoresSafeArea()
            
            VStack {
                Text("Результат: \(passed ? "тест пройден!" : "Верно \(count - wrong) из \(count)")")
                    .font(.title2)
                
                Button("Вернуться") {
                    dismiss()
                }
                .padding(30)
            }
        }
    }
}

#Preview {
    QuizResultView(passed: true, count: 10, wrong: 2)
}
