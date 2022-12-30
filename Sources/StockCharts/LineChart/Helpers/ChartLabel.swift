//
//  ChartLabel.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct ChartLabel: View {
    public var lineChartController: LineChartController
    
    @Binding var indexPosition: Int  // Data point position
    
    public var body: some View {
        HStack {
            
            if let dates = lineChartController.dates, dates.count > indexPosition {
                let date = formatStringDate(dates[indexPosition])
                Text(date)
                    .opacity(0.5)
            }
            
            if let hours = lineChartController.hours, hours.count > indexPosition {
                let hour = hours[indexPosition]
                Text(hour)
                    .opacity(0.5)
            }
            
            if lineChartController.prices.count > indexPosition {
                Text("$\(lineChartController.prices[indexPosition], specifier: "%.2f")")
                    .foregroundColor(lineChartController.labelColor)
            }
        }
    }
    
    // By default, this function takes string in format yy-MM-dd (2021-01-01) and transform it to medium default string format
    public func formatStringDate(_ stringDate: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = lineChartController.dateFormat
        let date = dateFormatter.date(from: stringDate)
        
        // Format date to the final format
        dateFormatter.dateStyle = lineChartController.labelDateFormat
        let finalDate = dateFormatter.string(from: date!)
        
        return finalDate
    }
}
