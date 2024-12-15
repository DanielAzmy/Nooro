//
//  SearchBar.swift
//  Nooro Weather
//
//  Created by Dodo's Mac on 15/12/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(maxWidth: .infinity, maxHeight: 60)
            .foregroundStyle(.gray.opacity(0.1))
            .overlay {
                HStack{
                    TextField("Search Location", text: $searchText)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .opacity(0.4)
                        
                }
                .padding()
            }
    }
}

#Preview {
    SearchBar(searchText: .constant(""))
}
