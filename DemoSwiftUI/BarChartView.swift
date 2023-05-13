//
//  BarChartView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 12.05.2023.
//

import SwiftUI
import Charts

struct BarChartView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(Post.data) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.title),
                        y: .value("Total Count", shape.description.count)
                    )
                    .foregroundStyle(by: .value("Shape Color", shape.age))
                }
            }
            .chartForegroundStyleScale([
                "Archaic": .brown, "Enlightenment": .purple, "Nature": .mint, "Computer": .pink
            ])
            
            Text("Statistics")
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
