//
//  ContentView.swift
//  UsingAlamofire
//
//  Created by Bart Bruijnesteijn on 08/05/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import SwiftUI

struct CountryView: View {
    @ObservedObject var model = CountryListViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(self.model.allCountries, id: \.self) { country in
                    HStack {
                        Image(country.code.lowercased())
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100 ,height: 100)
                            .padding()
                        VStack(alignment: .leading) {
                            Text(country.name)
                                .font(.headline)
                                .foregroundColor(Color("AccentColor"))
                            Text(country.region)
                                .font(.subheadline)
                        }
                        .padding()
                    }
                }
            }
            
            .navigationBarTitle("Countries")
        }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}
