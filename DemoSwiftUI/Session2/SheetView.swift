//
//  SomeView.swift
//  DemoSwiftUI
//
//  Created by Serge Kotov on 01.04.2024.
//

import SwiftUI

struct SomeView: View {
    
    @State private var showAlert = false
    @State private var showingSheet = false
    
    var body: some View {
        Button("Tap me") {
            showAlert.toggle()
        }
            .font(.title)
            .alert("Показать sheet view?", isPresented: $showAlert) {
                Button("Да") {
                    showingSheet.toggle()
                }
                Button("Нет") { }
            }
            .sheet(isPresented: $showingSheet) {
                // optional: add button to navigation bar
//                NavigationView {
                    SheetView()
//                        .navigationBarItems(leading: Button("Return") {
//                            showingSheet.toggle()
//                        })
//                }
            }
    }
}

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Press to dismiss") {  dismiss() }
            .font(.title).padding()
            .background(.yellow)
    }
}

#Preview {
    SomeView()
}
