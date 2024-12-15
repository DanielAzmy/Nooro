//
//  Nooro_WeatherApp.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

@main
struct Nooro_WeatherApp: App {
    @StateObject private var storege = CityStorageService()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .applyDefaultFont()
                .environmentObject(storege)
            
        }
    }
}
