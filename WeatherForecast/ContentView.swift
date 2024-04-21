//
//  ContentView.swift
//  WeatherForecast
//
//  Created by 刘冠恺 on 2024/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Monday", high: 30, low: 27, isRainy: false)
            
            DayForecast(day: "Tuesday", high: 27, low: 23, isRainy: true)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String {
        if isRainy == true {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
        
    }
    
    var iconColour: Color {
        if isRainy == true {
            return Color.blue
        } else {
            return Color.orange
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .foregroundColor(iconColour)
                .font(Font.largeTitle)
                .padding()
            Text(day)
                .font(Font.headline)
            Text("Highest:\(high)℃")
                .fontWeight(Font.Weight.semibold)
            Text("Lowest:\(low)℃")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
