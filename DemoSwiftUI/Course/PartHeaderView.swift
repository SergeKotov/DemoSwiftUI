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
                         NavigationView {
                               QuizView(part: part)
                                .navigationBarItems(trailing: Button("Отложить") {
                                        showingQuiz.toggle()
                                 })
                          }
                    }
                }
            }
        }
        .padding([.leading, .trailing])
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    PartHeaderView(part: DataController.getPreviewCoursePart(container))
        .modelContainer(container)
}
