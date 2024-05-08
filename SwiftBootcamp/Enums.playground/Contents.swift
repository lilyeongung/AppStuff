/*
 Module 12 - Enums
 
 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
 
 Value based semantics.
 
 Whenever you have something that requires custom types, or options, an enumeration is the perfect structure to use
 */

// MARK: - Standard Enum
import Foundation


enum ColorScheme {
    case light
    case dark
    case custom
    case system
}

var scheme: ColorScheme = .light

scheme = .light

if scheme == .dark {
    print("Black background color")
} else if scheme == .light {
    print("White background color")
} else {
    print("Custom background color")
}

switch scheme {
case .light:
    print("White background color")
case .dark:
    print("Black background color")
case .custom:
    print("Custom background color")
case .system:
    print("System background color")
}


// MARK: Enum Raw Values

enum Weekday: String {
    case monday = "M"
    case tuesday = "T"
    case wednesday = "W"
    case thursday = "Th"
    case friday = "F"
    case saturday = "Sa"
    case sunday = "Su"
}

let today = Weekday.monday
print("DEBUG: Today is \(today.rawValue)")

enum APIStatusCode: Int {
    case success = 200    // default rawValue
    case unauthorized = 401
    case notFound = 404
    case serverError = 500
}

let statusCode: APIStatusCode = .success
print("Status code from api request is \(statusCode.rawValue)")

switch statusCode {
case .success:
    print("Do something with data")
case .unauthorized:
    print("api request is unauthorized with status code \(statusCode.rawValue)")
case .notFound:
    print("Status code from api request is \(statusCode.rawValue)")
case .serverError:
    print("Status code from api request is \(statusCode.rawValue)")
}


// MARK: - Associated Values & Computed Properties

enum OrderStatus {
    case processed
    case shipped(trackingID: String, shippingTimeInDays: Int)
    case delivered
    
    var statusMessage: String {  // enums must not hold stored properties but can hold computed
        switch self {
        case .processed:
            return "Your order has been processed!"
        case .shipped(let trackingID, let shippingTime):
            return "Your order has shipped! Your tracking number is \(trackingID). It will arrive in \(shippingTime) days"
        case .delivered:
            return "Your order has been delivered!"
        }
    }
}

var status: OrderStatus = .processed

print(status.statusMessage)

status = .shipped(trackingID: NSUUID().uuidString, shippingTimeInDays: 5)
print(status.statusMessage)

status = .delivered
print(status.statusMessage)

enum Color: CaseIterable {
    case red
    case green
    case blue
    case yellow
}

let allColors = Color.allCases

for color in allColors {
    print("Color is \(color)")
}





// MARK: - Instagram Example

enum NotificationType: Int, Codable {
    case like
    case comment
    case follow
    
    var notificationMessage: String {
        switch self {
        case .like: return " liked one of your posts."
        case .comment: return " commented on one of your posts."
        case .follow: return " started following you."
        }
    }
}
