//
//  Constants.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI
enum Constants {
    static let weatherAPIBaseURL = "https://api.weatherapi.com/v1/current.json"
    static let weatherAPIKey = "30382499e73540c2ada131808231508"
}


struct DefaultFontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.custom("Poppins", size: 18))
    }
}

extension View {
    func applyDefaultFont() -> some View {
        self.modifier(DefaultFontModifier())
    }
}

enum Fonts{
    static let regular = "Poppins"
    static let bold = "Poppins-Bold"
}
