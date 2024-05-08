/*
 Classes and Structs are both ways to create objects
 
 Classes are Reference Types -> Google Sheet Shared Doc
    - have inheritance, can have a subclass -> RaceCar
 
 Structs are Value Types -> Excel Individual Sheet
    - Lightweight & Performant
 
 Some common Structs = User or Product
 
 */

import UIKit


class Car {
    var year: Int
    var make: String
    var color: String 
    
    init(year: Int, make: String, color: String) {
        self.year = year
        self.make = make
        self.color = color
    }
}

class RaceCar: Car {
    var number: Int
    var team: String
    
    init(number: Int, team: String, year: Int, make: String, color: String) {
        self.number = number
        self.team = team
        super.init(year: year, make: make, color: color)
    }
}

var myCar = Car(year: 2022, make: "Porsche", color: "Grey")
var stolenCar = myCar
stolenCar.color = "Yellow"

print(myCar.color)


struct Motorcycle {
    var year: Int
    var make: String
    var color: String
}

var myMotorcycle = Motorcycle(year: 2024, make: "Honda", color: "Green")
var stolenMotorcycle = myMotorcycle
stolenMotorcycle.color = "Red"
print(myMotorcycle.color)
print(stolenCar.color)


class MyCustomButton: UIButton {
    // Inheriting everything = Bloat = Baggage may not need
}






// User in apps
struct User {
    var id: UUID
    var createdAt: Date
    var username: String
    var avatarURL: String
    var dateOfBirth: Date
    var bio: String
    var city: String
}

// Product in apps
struct Product {
    var id: UUID
    var name: String
    var price: Double
    var description: String
    var rating: Double
}
