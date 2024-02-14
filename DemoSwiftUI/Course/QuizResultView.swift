//
//  QuizResultView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct QuizResultView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var passed: Bool
    
    let count: Int
    let wrongCount: Int
    
    var success: Bool { wrongCount < 3 }
    
    var body: some View {
        ZStack {
            Color(success ? .systemGreen : .systemRed)
                .ignoresSafeArea()
            
            VStack {
                Text("Результат: \(success ? "тест пройден!" : "Верно \(count - wrongCount) из \(count)")")
                    .font(.title2)
                
                Button("Вернуться") {
                    passed = success
                    dismiss()
                }
                .padding(30)
            }
        }
    }
}

#Preview {
    QuizResultView(passed: .constant(false), count: 10, wrongCount: 2)
}
