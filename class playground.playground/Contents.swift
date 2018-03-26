//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var placeName = "New York"

placeName.count
placeName.contains("or")

struct Person {
    var firstName: String
    var lastName: String
    
    func sayHello() {
        print("Hello my name is \(firstName) \(lastName)")
    }
}

var professor = Person(firstName: "Jess", lastName: "Newman")
print(professor.lastName)

professor.sayHello()
