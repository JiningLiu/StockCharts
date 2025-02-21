# StockCharts (SwiftUI)
![Build Status](https://github.com/denniscm190/StockCharts/actions/workflows/swift.yml/badge.svg)   
### **This package is for iOS 14+, if your app only needs to support iOS 16 or above, please see [Swift Charts](https://developer.apple.com/documentation/charts)**   

Display interactive stock charts easily 🎉

## Instalation
- In Xcode go to `File` -> `Swift packages` -> `Add package dependency`
- Copy and paste `https://github.com/JiningLiu/StockCharts.git`

## Demo app
[**Trades** is a SwiftUI app](https://github.com/denniscm190/trades-demo) with real use cases of the StockCharts `framework`. 
This demo app is based on the [original stock-charts framework](https://github.com/denniscmartin/stock-charts), a demo app for this fork is coming soon.

## Usage

A wiki page for this framework is coming soon.

```swift
import StockCharts
```

### Line chart
```swift
let lineChartController = LineChartController(prices: [Double])
LineChartView(lineChartController: lineChartController)
```

You can customise the line chart with `LineChartController`

```swift
LineChartController(
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
)
```

To enable the drag gesture set `dragGesture` to `true` in the `LineChartController `    

```swift
LineChartView(
    lineChartController:
        LineChartController(
            prices: [Double],
            dragGesture: true
        )
)
```
<img width="374" alt="LineChartVideo" src="https://user-images.githubusercontent.com/66180929/116899623-137c6e80-ac38-11eb-8ec0-e678aea54062.gif">

### Capsule chart
```swift
CapsuleChartView(percentageOfWidth: CGFloat)
// percentageOfWidth: must be 0 <= x <= 1
```

#### Example
```swift
import SwiftUI
import StockCharts

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 400, height: 120)
            .foregroundColor(.white)
            .shadow(color: Color(.gray).opacity(0.15), radius: 10)
            .overlay(
                VStack(alignment: .leading) {
                    Text("Dennis Concepcion")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Random guy")
                    
                    CapsuleChartView(percentageOfWidth: 0.6, style: CapsuleChartStyle(capsuleColor: Color.blue))
                        .padding(.top)
                }
                .padding()
            )
    }
}
```

<img width="328" alt="CapsuleChart" src="https://user-images.githubusercontent.com/66180929/120899384-c2450d80-c62f-11eb-9a56-5a03e97441d2.png">

