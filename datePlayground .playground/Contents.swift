//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var unixDate: TimeInterval = 1522446285
var usableDate = Date(timeIntervalSince1970: unixDate)

var dateFormatter = DateFormatter()
dateFormatter.dateStyle = .short
dateFormatter.timeStyle = .short

var dateString = dateFormatter.string(from: usableDate)

let now = Date()
var nowFormatter = DateFormatter()
nowFormatter.dateFormat = "EEEE, MMM d, y"
var nowString = nowFormatter.string(from: now)
nowFormatter.timeZone = TimeZone(identifier: "America/New York")
nowString = nowFormatter.string(from: now)
print(nowString)
