//
//  ErrorHandler.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import Foundation

enum WeatherError: Error, LocalizedError {
    case invalidCity
    case networkError
    case decodingError
    case unknownError
    case storageError

    var errorDescription: String? {
        switch self {
        case .invalidCity:
            return "The city name is invalid. Please try again."
        case .networkError:
            return "Unable to connect to the server. Please check your internet connection."
        case .decodingError:
            return "Failed to process the weather data."
        case .unknownError:
            return "An unknown error occurred."
        case .storageError:
            return "Failed to save or retrieve data."
        }
    }
}

