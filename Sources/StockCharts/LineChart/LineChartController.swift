//
//  LineChartController.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 5/8/21.
//

import SwiftUI

public class LineChartController {
    
    // MARK: - Data
    public var prices: [Double]
    public var dates: [String]?
    public var hours: [String]?
    public var dateFormat: String
    
    // MARK: - Style
    public var labelColor: Color
    public var labelDateFormat: DateFormatter.Style
    public var indicatorPointColor: Color
    public var showingIndicatorLineColor: Color
    public var flatTrendLineColor: Color
    public var uptrendLineColor: Color
    public var downtrendLineColor: Color
    
    // MARK: - Interactions
    public var dragGesture: Bool
    public var dragGestureMinimumDuration: Double
    
    public init(
        prices: [Double],
        dates: [String]? = nil,
        hours: [String]? = nil,
        dateFormat: String = "yy-MM-dd",
        
        labelColor: Color = .blue,
        labelDateFormat: DateFormatter.Style = .medium,
        indicatorPointColor: Color = .blue,
        showingIndicatorLineColor: Color = .blue,
        flatTrendLineColor: Color = .purple,
        uptrendLineColor: Color = .green,
        downtrendLineColor: Color = .red,
        
        dragGesture: Bool = false,
        dragGestureMinimumDuration: Double = 0
    ) {
        self.prices = prices
        self.dates = dates
        self.hours = hours
        self.dateFormat = dateFormat
        
        self.labelColor = labelColor
        self.labelDateFormat = labelDateFormat
        self.indicatorPointColor = indicatorPointColor
        self.showingIndicatorLineColor = showingIndicatorLineColor
        self.flatTrendLineColor = flatTrendLineColor
        self.uptrendLineColor = uptrendLineColor
        self.downtrendLineColor = downtrendLineColor
        
        self.dragGesture = dragGesture
        self.dragGestureMinimumDuration = dragGestureMinimumDuration
    }
}
