//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Jess Newman on 3/24/18.
//  Copyright © 2018 Newman. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    var currentSummary = ""
    
    func getWeather(completed: @escaping () -> ()) {
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                } else {
                    print("Could not return a temperature")
                }
                if let summary = json["daily"]["summary"].string {
                    self.currentSummary = summary
                    print("The summary for \(self.name) is \(self.currentSummary)")
                } else {
                    print("Could not return a summary.")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}
