//
//  ContentView.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = HomeViewModel()
    @EnvironmentObject var storege: CityStorageService
    var body: some View {
        ZStack {
            VStack {
                SearchBar(searchText: $vm.searchText)
                    .onChange(of: vm.searchText){
                        Task{
                            await  vm.getCityWeather(city: vm.searchText)
                        }
                    }
                Spacer()
                if !vm.searchText.isEmpty{
                    VStack{
                        if let searchCity = vm.weather{
                            SearchCity(searchCity: searchCity)
                                .onTapGesture {
                                    storege.clearCity()
                                    storege.saveCity(searchCity.location.name)
                                    vm.searchText = ""
                                }
                            Spacer()
                        }
                    }
                }
                else{
                    if let cityWeather = vm.weather{
                        withAnimation {
                            CityWeather(weather: cityWeather)
                        }
                    }else{
                        VStack{
                            Text("No City Selected")
                                .font(.custom("Poppins-Bold", size: 38))
                                .bold()
                            Text("Please Search For A City")
                        }
                    }
                }
                
                Spacer()
                
                
            }
            .padding()
            .applyDefaultFont()
            .onAppear{
                Task{
                    await vm.getCityWeather(city: storege.loadCity() ?? "")
                }
            }
            if let errorMessage = vm.errorMessage{
                SnackbarView(
                    message: errorMessage ,
                    duration: 3,
                    onDismiss: {vm.errorMessage = nil},
                    isVisible: true
                )
            }
            
        }
        
    }
}

#Preview {
    HomeView()
}









