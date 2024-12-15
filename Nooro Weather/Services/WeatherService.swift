//
//  WeatherService.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import Foundation

protocol WeatherService{
    func fetchWeather(city: String) async throws -> WeatherResponse 
}
