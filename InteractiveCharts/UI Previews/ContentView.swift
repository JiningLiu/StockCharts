//
//  ContentView.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChartViewPreview(data: generateSampleData(350))
                .tabItem {
                    Label("ChartView", systemImage: "house")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
