//
//  BarChartView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 14.03.2023.
//

import SwiftUI
import Charts

struct BarChartView: View {
    var body: some View {
        VStack {            
            Chart {
                ForEach(stackedBarData) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.type),
                        y: .value("Total Count", shape.count)
                    )
                    .foregroundStyle(by: .value("Shape Color", shape.color))
                }
            }
            .chartForegroundStyleScale([
                "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
            ])
            
            Text("SwiftUI Charts demo")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
