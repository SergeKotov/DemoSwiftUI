//
//  PartView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 08.02.2024.
//

import SwiftUI

struct PartView: View {

    var part: CoursePart
        
    var body: some View {
        PartHeaderView(part: part)
        
        List(part.cells.sorted { $0.title < $1.title } ) { cell in
            PartCellView(cell: cell)
        }
        .listStyle(.plain)
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    PartView(part: DataController.getPreviewCoursePart(container))
        .modelContainer(container)
}
