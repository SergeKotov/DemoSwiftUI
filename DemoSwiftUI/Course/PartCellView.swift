//
//  PartCellView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 13.02.2024.
//

import SwiftUI

struct PartCellView: View {
    
    var cell: CourseCell
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(cell.title)
                .italic()
            VStack(alignment: .leading) {
                ForEach(cell.keywords, id: \.self) { keyword in
                    Text(keyword)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
    }
}

#Preview {
    PartCellView(cell: DataController.previewCoursePart.cells[0])
}
