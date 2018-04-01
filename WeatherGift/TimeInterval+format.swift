//
//  TimeInterval+format.swift
//  WeatherGift
//
//  Created by Jess Newman on 4/1/18.
//  Copyright © 2018 Newman. All rights reserved.
//

import Foundation


extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString 
    }
}
