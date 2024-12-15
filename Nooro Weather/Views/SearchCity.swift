//
//  SearchCity.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

struct SearchCity: View {
    var searchCity: WeatherResponse
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(maxWidth: .infinity, maxHeight: 140)
            .foregroundStyle(.gray.opacity(0.1))
            .overlay(
                HStack{
                    VStack(alignment: .center){
                        Text(searchCity.location.name)
                            .font(.custom(Fonts.bold, size: 30))
                            .lineLimit(1)
                        
                        Text("\(String(format: "%.f", searchCity.current.tempC))°")
                            .font(.custom(Fonts.bold, size: 30))
                    }
                    Spacer()
                    
                    AsyncImage(
                        url: URL(
                            string: "https:\(searchCity.current.condition.icon)"
                        )
                    ) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                }
                    .padding(.horizontal, 40)
            )
    }
}
