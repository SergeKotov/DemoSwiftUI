//
//  PartRowView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct PartRowView: View {
    
    let part: CoursePart
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                PartImageView(id: part.id, dim: 45)
                Text(part.id)
                    .foregroundColor(.secondary)
                Text(part.title)
                    .font(.headline)
            }
                                                            
            if part.passed {
                HStack{
                    Spacer()
                    
                    Label {
                        Text(part.date?.formatted(date: .numeric, time: .omitted) ?? "")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    }
                }
            }
        }
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    PartRowView(part: DataController.getPreviewCoursePart(container))
        .modelContainer(container)
}
