//
//  Country.swift
//  UsingAlamofire
//
//  Created by Bart Bruijnesteijn on 09/05/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import Foundation
import Combine

struct Country: Decodable, Identifiable, Hashable {
    let id = UUID()
    let code: String
    let name: String
    let region: String
    
    enum CodingKeys: String, CodingKey {
        case code = "alpha2Code"
        case name = "name"
        case region = "region"
    }
}
