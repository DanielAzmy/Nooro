//
//  CityWeather.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

struct CityWeather: View {
    var weather: WeatherResponse
    var body: some View {
        VStack {
            AsyncImage(
                url: URL(string: "https:\(weather.current.condition.icon)")
            ) { image in
                image.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            HStack{
                Text(weather.location.name)
                    .font(.custom(Fonts.regular, size: 35))
                    .bold()
                    .lineLimit(1)
                Image(systemName: "location.fill")
            }
            Text("\(String(format: "%.f", weather.current.tempC)) °")
                .font(.custom(Fonts.regular, size: 70))
            
            RoundedRectangle(cornerRadius: 30)
                .frame(maxWidth: .infinity, maxHeight: 110)
                .foregroundStyle(.gray.opacity(0.07))
                .overlay(
                    HStack(spacing: 50){
                        VStack{
                            Text("Humidity")
                                .foregroundStyle(.gray.opacity(0.6))
                            Text("\(weather.current.humidity)%")
                                .foregroundStyle(.gray)
                        }
                        VStack{
                            Text("UV")
                                .foregroundStyle(.gray.opacity(0.6))
                            Text("\(String(format: "%.f", weather.current.uv))")
                                .foregroundStyle(.gray)
                        }
                        VStack{
                            Text("Feels Like")
                                .foregroundStyle(.gray.opacity(0.6))
                            Text("\(String(format: "%.f", weather.current.feelslikeC))°")
                                .foregroundStyle(.gray)
                        }
                    }
                )
                .padding()
        }
    }
}
