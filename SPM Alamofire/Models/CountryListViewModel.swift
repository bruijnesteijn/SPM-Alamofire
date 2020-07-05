//
//  CountryViewModel.swift
//  UsingAlamofire
//
//  Created by Bart Bruijnesteijn on 09/05/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import Foundation
import Combine
import Alamofire

class CountryListViewModel: ObservableObject {
    @Published var allCountries = [Country]()

    init() {
        fetchAllCountries()
    }
    
    private func fetchAllCountries() {
        AF.request("https://restcountries.eu/rest/v2/all").responseJSON { response in
            guard let data = response.data else {return}
            
            print(response)
            
            do {
                let countries = try JSONDecoder().decode([Country].self, from: data)
                for var i in (0..<countries.count) {
                    print(countries[i].code, "-", countries[i].name, "-", countries[i].region)
                    
                    self.allCountries.append(Country(code: countries[i].code, name: countries[i].name, region: countries[i].region))
                   
                    i += 1
                }
            } catch {
                print("Error decoding response \(error)")
            }
        }
    }
}

