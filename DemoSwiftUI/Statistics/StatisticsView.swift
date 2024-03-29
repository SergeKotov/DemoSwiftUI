//
//  StatisticsView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.02.2024.
//

import SwiftUI
import SwiftData

struct StatisticsView: View {

    @Query(sort: [SortDescriptor(\CoursePart.id)]) var parts: [CoursePart]

    var body: some View {
        VStack {
            SectorMarkView(parts: parts)
                .frame(height: 260)
            
            BarMarkView(parts: parts)
            
            LineMarkView(parts: parts)
        }
        .padding()
    }
}

#Preview {
    let container = DataController.container(inMemory: true)
    
    return StatisticsView()
        .modelContainer(container)    
}
