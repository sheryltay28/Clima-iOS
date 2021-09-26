//
//  WeatherModel.swift
//  Clima
//
//  Created by Tay Sheryl on 28/5/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temp: Double
    
    var conditionName: String {
        switch conditionId {
        case 200..<300:
            return "cloud.heavyrain"
        case 300..<400:
            return "cloud.drizzle"
        case 500..<600:
            return "cloud.rain"
        case 600..<700:
            return "cloud.snow"
        case 700..<800:
            return "smoke"
        case 800:
            return "sun.max"
        case 801..<900:
            return "cloud"
        default:
            return "sun.max"
        }
    }
    
    var temperatureString: String {
        return String(format: "%.1f", temp)
    }
}
