/*
 Higher Order Functions -> Short-hand syntax for a basic for-loop
 
 filter, map, and reduce iterate over an array and spit out  their results into a new variable
 */

import UIKit

struct IndieApp {
    let name: String
    let monthlyPrice: Double
    let users: Int
}

let appPortfolio = [
    IndieApp(name: "Creator View", monthlyPrice: 11.99, users: 4356),
    IndieApp(name: "FitHero", monthlyPrice: 0.00, users: 1756),
    IndieApp(name: "Buckets", monthlyPrice: 3.99, users: 7598),
    IndieApp(name: "Connect Four", monthlyPrice: 1.99, users: 34081)
]


// MARK: - Filter
let freeApps = appPortfolio.filter { $0.monthlyPrice == 0.00 }
print(freeApps)

let highUsers = appPortfolio.filter { $0.users > 5000 }

// Same as trailing closure:
//var highUsers: [IndieApp] = []
//
//for app in appPortfolio {
//    if app.users > 5000 {
//        highUsers.append(app)
//    }
//}

print(highUsers)


// MARK: - Map - want to pull out all of a specific property
// Pull out names of apps and sort them alphabetically
let appNames = appPortfolio.map { $0.name }.sorted()
print(appNames)

// add a Transform to that property -> pull out prices and multiply by 1.5
let increasedPrices = appPortfolio.map { $0.monthlyPrice * 1.5 }
print(increasedPrices)


// MARK: - Reduce
let numbers = [3, 5, 9, 12, 18]

// .reduce(starting val, operator)
let sum = numbers.reduce(100, +)
print(sum)

let difference = numbers.reduce(0, -)
print(difference)

// add up users from each IndieApp
let totalUsers = appPortfolio.reduce(0, { $0 + $1.users })
print(totalUsers)


// MARK: - Chaining
// Want monthly recurring revenue for whole appPortfolio
// Map out and get each apps recurring revenue, multiply by 70% (Developer Cut) and then attach a reduce at the end to get overall apps recurringRevenue
let recurringRevenue = appPortfolio.map { $0.monthlyPrice * Double($0.users) * 0.7 }.reduce(0, +)
print(recurringRevenue)


// MARK: - Compact Map - removes nil from an array
let nilNumbers: [Int?] = [1, nil, 17, nil, 3, 7, nil, 99]
let nonNilNumbers = nilNumbers.compactMap { $0 }
print(nonNilNumbers)


// MARK: - Flat Map - If you have an array of arrays, it flattens them into one
let arrayOfArrays: [[Int]] = [[1, 2, 3],
                              [4, 5, 6],
                              [7, 8, 9]]

// within flatmap, pass in a map to where each item in subarray multiply that by 2
let singleArray = arrayOfArrays.flatMap { $0.map { $0 * 2 } }
print(singleArray)
