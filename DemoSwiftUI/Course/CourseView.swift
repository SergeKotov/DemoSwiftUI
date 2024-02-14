//
//  CourseView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 05.02.2024.
//

import SwiftUI
import SwiftData

struct CourseView: View {
    @Environment(\.modelContext) var modelContext

    @Query(sort: [SortDescriptor(\CoursePart.id)]) var parts: [CoursePart]

    var body: some View {
        NavigationView {
            List(parts) { part in
                NavigationLink {
                    PartView(part: part)
                } label: {
                    PartRowView(part: part)
                }
                .padding([.top, .bottom])
            }
            .navigationTitle("Мини-курс SwiftUI")
            .listStyle(.plain)
        }
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    
    return CourseView()
        .modelContainer(container)
}
