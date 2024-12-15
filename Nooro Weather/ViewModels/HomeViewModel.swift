//
//  HomeViewModel.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var searchText: String = ""
    @Published var errorMessage: String?
    @Published var weather: WeatherResponse?
    
    func getCityWeather(city: String) async{
        do{
            
            let response = try await WeatherApiService.shared.fetchWeather(city: city)
            DispatchQueue.main.async{
                self.errorMessage = nil
                self.weather = response
                
            }
            
        }
        catch let error as WeatherError {
            DispatchQueue.main.async{
                self.errorMessage = error.localizedDescription
            }
        } catch {
            
            DispatchQueue.main.async {
                self.errorMessage = WeatherError.unknownError.localizedDescription
            }
        }
        
    }
}
