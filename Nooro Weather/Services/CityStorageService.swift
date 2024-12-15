//
//  CityStorageService.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import Foundation

class CityStorageService: ObservableObject {
    private let userDefaultsKey = "savedCityName"

    func saveCity(_ city: String) {
        UserDefaults.standard.set(city, forKey: userDefaultsKey)
    }

    func loadCity() -> String? {
        return UserDefaults.standard.string(forKey: userDefaultsKey)
    }

    func clearCity() {
        UserDefaults.standard.removeObject(forKey: userDefaultsKey)
    }
}

