//
//  CountryViewModel.swift
//  UsingAlamofire
//
//  Created by Bart Bruijnesteijn on 09/05/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import SwiftUI

class CountryViewModel: Identifiable {    
    let id = UUID()
    let country: Country

    init(country: Country) {
        self.country = country
    }
    
    var countryCode: String {
        return self.country.code
    }
    
    var name: String {
        return self.country.name
    }
    
    var region: String {
        return self.country.region
    }
}
