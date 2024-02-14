//
//  SectorMarkView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.02.2024.
//

import SwiftUI
import Charts

struct SectorMarkView: View {
    
    var parts: [CoursePart]
    
    var body: some View {
        GroupBox ("Количество тем в каждой части курса") {
            Chart(parts) { part in
                SectorMark(
                    angle: .value(
                        Text(verbatim: part.title),
                        part.cells.count
                    ),
                    innerRadius: .ratio(0.4)
                )
                .foregroundStyle(
                    by: .value(
                        Text(verbatim: part.title),
                        part.title
                    )
                )
                .annotation(position: .overlay) {
                    Text("\(part.cells.count)")
                }
            }
        }
    }
}

#Preview {
    BarMarkView(parts: DataController.previewCourse)
}

