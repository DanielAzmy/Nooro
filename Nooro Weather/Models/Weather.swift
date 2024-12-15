//
//  Weather.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

struct WeatherResponse: Codable {
    let location: Location
    let current: CurrentWeather
}

struct Location: Codable {
    let name: String
    let region: String
    let country: String
}

struct CurrentWeather: Codable {
    let tempC: Double
    let condition: WeatherCondition
    let humidity: Int
    let uv: Double
    let feelslikeC: Double
    
    enum CodingKeys: String, CodingKey {
        case tempC = "temp_c"
        case condition
        case humidity
        case uv
        case feelslikeC = "feelslike_c"
    }
}

struct WeatherCondition: Codable {
    let text: String
    let icon: String
}


