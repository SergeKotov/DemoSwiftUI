//
//  SectorMarkView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.02.2024.
//

import SwiftUI
import Charts

struct SectorMarkView: View {
    
    let parts: [CoursePart]
    
    var body: some View {
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
        .groupBoxed(title: "Количество тем в каждой части курса")
    }
}

#Preview {
    SectorMarkView(parts: DataController.previewCourse)
}

