//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Jess Newman on 4/11/18.
//  Copyright © 2018 Newman. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
     //initialiazation of the class
    }
}
