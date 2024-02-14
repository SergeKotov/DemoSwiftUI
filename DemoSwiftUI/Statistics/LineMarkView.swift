//
//  LineMarkView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.02.2024.
//

import SwiftUI
import Charts

struct LineMarkView: View {
    
    var parts: [CoursePart]
    
    var body: some View {
        GroupBox ("Успешность тестов по датам в %") {
            Chart(partsByDates) { part in
                LineMark(x: .value("Date", part.date ?? .now),
                         y: .value("Value", getPercent(part.wrong, part.count)))
                .foregroundStyle(.gray)
                
                PointMark(x: .value("Date", part.date ?? .now),
                          y: .value("Value", getPercent(part.wrong, part.count)))
                .foregroundStyle(part.passed ? .green : .red)
                .symbolSize(part.passed ? 200 : 100)
            }
        }
    }
    
    private var partsByDates: [CoursePart] {
        parts.filter { $0.date != nil }
             .sorted { $0.date! < $1.date! }
    }
    
    private func getPercent(_ val1: Int, _ val2: Int) -> Int {
        Int(Double(val2 - val1) / Double(val2) * 100)
    }
}

#Preview {
    LineMarkView(parts: DataController.previewCourse)
}
