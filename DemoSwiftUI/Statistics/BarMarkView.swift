//
//  BarMarkView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.02.2024.
//

import SwiftUI
import Charts

struct BarMarkView: View {
    
    var parts: [CoursePart]
    
    var body: some View {
        GroupBox ("Освоение тем курса") {
            Chart(parts) { part in
                BarMark(x: .value("Title", part.title),
                        y: .value("Value", part.count - part.wrong))
                .foregroundStyle(part.passed ? .green : .red)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                
                BarMark(x: .value("Title", part.title),
                        y: .value("Value", part.wrong))
                .foregroundStyle(part.passed ? .yellow : .gray)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            }
        }
    }
}

#Preview {
    BarMarkView(parts: DataController.previewCourse)
}
