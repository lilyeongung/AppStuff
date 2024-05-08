/*
 Generics can eliminate code duplication by creating a general solution that can handle various types.
 
 */

import UIKit
import Foundation


// Works as long as conforms to protocol Comparable
func determineHigherValue<T: Comparable>(valueOne: T, valueTwo: T) {
    let higherValue = valueOne > valueTwo ? valueOne : valueTwo
    print("\(higherValue) is the higher value")
}

determineHigherValue(valueOne: 3, valueTwo: 8)
determineHigherValue(valueOne: "Swift", valueTwo: "Andrew")
determineHigherValue(valueOne: Date.now, valueTwo: Date.distantFuture)

//determineHigherValue(valueOne: Date.now, valueTwo: "String") // Cannot because must be same type

// Array is a generic of Type Element -> @frozen struct Array<Element>
var numbersArray = Array(repeating: 3, count: 10 )
var stringArray = Array(repeating: "Andrew", count: 5)

numbersArray.append(4)
stringArray.append("Swift")


// MARK: - Github followers real life example

// The example below shows how to decode an instance of a simple User type from a JSON object. The type adopts Decodable so that it’s decodable using a JSONDecoder instance.

struct User: Decodable {
    var id: String
    
    let name: String
    let age: Int
}

struct Repository: Decodable {
    // Entity Properties
    var users: [User]
    
    // Metadata Properties
    var createdAt: Date
    
    init(users: [User], createdAt: Date) {
        self.users = users
        self.createdAt = createdAt
    }
}


let json = """
{
    "id": "NSUUID",

    "name": "Andrew",
    "age": 26
}
""".data(using: .utf8)!

let decoder = JSONDecoder()


func fetchUser(from url: URL) async throws -> User {
    let (data, _) = try await URLSession.shared.data(from: url)
    
    do {
        return try decoder.decode(User.self, from: data)
    } catch {
        throw error
    }
}
// These two functions are very similar so we can make them generic
func fetchRepository(from url: URL) async throws -> Repository {
    let (data, _) = try await URLSession.shared.data(from: url)
    
    do {
        return try decoder.decode(Repository.self, from: data)
    } catch {
        throw error
    }
}

// making T the generic so we can pass in a User, Repository, etc.
func fetchData<T: Decodable>(for: T.Type, from url: URL) async throws -> T {
    let (data, _) = try await URLSession.shared.data(from: url)
    
    do {
        return try decoder.decode(T.self, from: data)
    } catch {
        throw error
    }
}

// Only use Generics when it's slam dunk use case -> 4-5+ repetitions
