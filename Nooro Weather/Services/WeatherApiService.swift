//
//  WeatherApiService.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import Foundation
class WeatherApiService: WeatherService{
    static let shared = WeatherApiService()
    
    private init(){}
    
    func fetchWeather(city: String) async throws -> WeatherResponse {
        guard let url = URL(string: "\(Constants.weatherAPIBaseURL)?key=\(Constants.weatherAPIKey)&q=\(city)") else {
            throw WeatherError.invalidCity
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw WeatherError.unknownError
        }
        
        do {
            switch httpResponse.statusCode{
            case 200:
                let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
                return weatherResponse
            case 401:
                throw URLError(.userAuthenticationRequired)
            default:
                throw WeatherError.unknownError
            }
            
        } catch is DecodingError {
            throw WeatherError.decodingError
        }
        catch{
            throw WeatherError.networkError
        }
    }
}
