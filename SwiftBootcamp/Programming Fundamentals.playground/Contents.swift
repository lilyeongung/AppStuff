/*
 
 Exercises
 
    1. Use loops and comparison operators to print out odd or even numbers in a range
    2. Given an array of numbers
        - Computing sum
        - Max value,
        - Min value
    3. Guest List of users
        - Create a function to search for a user by name
        - Create a function to get all users less than a certain age
        - Update RSVP Status
        - Get number of users attending party
        - Get number of users not coming to party
        - Print report of age of users, attendees, etc.
    4. Create a Shopping Cart
        - Add/remove products to/from cart
        - Apply discounts to individual items (dollar and percentage)
        - Get total cost of products
        - Print receipt
 
 */


// MARK: Problem 1: Use loops and comparison operators to print out odd or even numbers in a range

func printOddOrEven(showEven:Bool, lowerBound: Int, upperBound: Int) {
    for number in lowerBound ... upperBound {
        if showEven {
            if number % 2 == 0 {
                print(number)
            }
        } else {
            if number % 2 != 0 {
                print(number)
            }
        }
    }
    print("---------------")

}

printOddOrEven(showEven: false, lowerBound: 50, upperBound: 100)
printOddOrEven(showEven: true, lowerBound: 50, upperBound: 100)


// MARK: Problem 2: Given an array of numbers

// - Compute Sum
// Given an array of numbers
var nums = [1, 5, 6, 4, 1]

func computeSum() -> Int {
// We create a property called sum that will be used to keep track of the sum at each point in our loop
    var sum = 0

// To Compute Sum we ultimately want to use a for loop through the array and sum the values as we go
    for num in nums {
        sum += num
    }
    // done with loop, return the value
    return sum
}

// Test compute sum function
computeSum()

/* - Max value
 
We create a property called max that will be used to keep track of the max at each point in our loop

To Compute Max we ultimately want to use a for loop through the array and check to see if the value is greater than the existing maximum, if it is -we'll update the max, if it's not, we let user know the current number is not greater than the existing max

Use print statements to test scenarios, can delete later

Done with loop, return the value

*/
func computeMax() -> Int {
    var max = 0

    for num in nums {
        print("Current max is \(max)")

        if num > max {
            max = num
            print("New max is \(num)")
        } else {
            print("Num \(num) is not greater than max \(max)")
        }
    }

    return max
}

// Test max function
computeMax()

/* - Min value
 
We create a property called min that will be used to keep track of the min at each point in our loop

To Compute Min we ultimately want to use a for loop through the array and check to see if the value is less than the existing minimum, if it is -we'll update the min, if it's not, we do nothing

Return the value after loop is done

*/
func computeMin() -> Int {
    var min = Int.max // highest # Xcode compiler allows

    for num in nums {
        if num < min {
            min = num
        }
    }

    return min
}

// Test min function
computeMin()


// MARK: Problem 3: Guest List of users
/* TODO: Foundations

 How to structure our code in the most efficient way possible. How to architect a solution from a list of requirements.

 First, when looking at this type of prompt, we’re going to want to create some sort of user.

 And we’re going to want to look at some of the properties that user might have:
 - each user is gonna have a name,
 - age we’re going to have to look at, and
 - RSVP Status: like is attending: yes or no -> That could be a boolean variable.

*/

// Let's create the two data structures we need:
struct Guest {
    let name: String // searching for user by name, we use a constant because most likely not going to change
    let age: Int // filtering by age, also constant
    var isAttending: Bool // updating who's coming/&not, getting the amount of people who are coming/&not
}

// So, we have a bunch of guests that we’re going to have at the party, but we’re also going to have a Guest List: that’s going to contain a bunch of those guests, and each guest is going to have this set of properties.

struct GuestList {
    var guests: [Guest] // an array of all of our guests/users
    
/* TODO: - Create a function to search for a user by name
 
 Since we want to be able to search for a user in our guest list, we should make this a struct function that’s part of our guest list
 We'll return a bool because ultimately we want to know if that user's name we're passing in is on the list or not
  
 We only want to return true if we find the user, but we also want the program to search through the entire list of guests, you have to guarantee that you are finished searching through the list before you can definitively say someone is not on it
  
 How do we accomplish this? Well, ultimately we're going to have to search through our array and see if the user's name is equal to the name in the list. So, we're going to use a For Loop for that
 - We can lower-case everything in our condition so user input does not need to be case-sensitive
 - Use print statements to test iterations & conditions
  
 ** Bonus: when searching for user, append a period for each iteration spent searching (not found, while false), depicting a buffering

*/
    func searchForGuest(name: String) -> Bool {
        var searching = "Searching"
        
        for guest in guests {
            print(searching)
            if name.lowercased() == guest.name.lowercased() {
                print("Found guest!")
                return true
            }
            searching.append(".")
            if searching == "Searching..." {
                searching = "Searching"
            }
        }
        
        print("Could not find guest")
        return false
    }
    
/* TODO: - Create a function to to get all users less than a certain age
 
 So, anytime I see "get.. and something like users" I know I'm going to write a function that I want to return a list of users (guests).
 Once again, this will be in our GuestList struct since we have to search through it's array.
 Pass in an age here, then this is going to return an array of users less than that age.
  
 It's common to contain a function inside our data structure so we can call it as an extension like we did with .searchForGuest
  
 Concept: We just have to loop through each one of our guests and check the age property, cross-reference it against the age we're passing in (in this case: 21 or 18), and then ultimately return the result because we want to get back the users that are less than that age (we will also get to their properties: name, age, and if they're attending or not.)
 
*/
    func getUsersLessThanAge(age: Int) -> [Guest] {
        var result = [Guest]() // blank array of guests
        
        for guest in guests {
            if guest.age <= age {
                result.append(guest)
            }
        }

        return result
    }
    
/* TODO: - Create a function to get # of users attending and # of users not attending
 
 We don't need to pass anything in.
 Loop through array, if isAttending is true, add 1 to some sort of count.
 For guests not attending, we just need to negate the isAttending condition.
 Return the count(s).
 
*/
    func getNumberOfAttendees() -> Int {
        var count = 0
        
        for guest in guests {
            if guest.isAttending { // 'if true'
                count += 1
            }
        }
        
        return count
    }
    
    func getNumberOfGuestsNotAttending() -> Int {
        var count = 0
        
        for guest in guests {
            if !guest.isAttending { // 'if false'
                count += 1
            }
        }
        
        return count
    }
    
/* TODO: - Print report of age of users, attendees, etc.
 
 Print number of people coming
 Print number of people not coming
    - Since we are still inside the GuestList struct, we can call these functions directly now.
 Print number of people not allowed to drink
 
*/
    func printReport() {
        
        print("There are \(getNumberOfAttendees()) guests attending")
        
        print("There are \(getNumberOfGuestsNotAttending()) guests not attending")
        
        // This will give back the actual elements in the array
        let guestsUnder21 = getUsersLessThanAge(age: 21)
        // So, we want to just get back the number of elements in that array
        let numGuestsUnder21 = guestsUnder21.count
        
        print("There are \(numGuestsUnder21) guests not allowed to consume alcohol")

    }
    
}

print("-----------------")

// Test cases: creating some guest objects, so we that we can ultimately add them to our guest list
let g1 = Guest(name: "Bruce Wayne", age: 35, isAttending: false)
let g2 = Guest(name: "Heath Ledger", age: 32, isAttending: true)
let g3 = Guest(name: "Tom Johnson", age: 17, isAttending: true)
let g4 = Guest(name: "Tony Stark", age: 37, isAttending: false)
let g5 = Guest(name: "Katie Smith", age: 20, isAttending: true)
let g6 = Guest(name: "Megan Fox", age: 34, isAttending: true)

// Add them to our guest list
let guestList = GuestList(guests: [g1, g2, g3, g4, g5, g6])

// Test searching for a guest
guestList.searchForGuest(name: "Megan Fox")

print("-----------------")

// Test get guests that are less than 21 and 18
let guestsUnder21 = guestList.getUsersLessThanAge(age: 21)
let guestsUnder18 = guestList.getUsersLessThanAge(age: 18)

// Test number of Attendees/Not attending
let numAttendees = guestList.getNumberOfAttendees()
let notComing = guestList.getNumberOfGuestsNotAttending()

// Test print report
guestList.printReport()

print("-----------------")

// Test case 2: creating guest objects for a second guest list (NBA players)
let g7 = Guest(name: "Lebron James", age: 38, isAttending: true)
let g8 = Guest(name: "Stephen Curry", age: 35, isAttending: true)
let g9 = Guest(name: "Russell Westbrook", age: 33, isAttending: true)
let g10 = Guest(name: "Kyrie Irving", age: 29, isAttending: false)
let g11 = Guest(name: "Kevin Durant", age: 32, isAttending: true)
let g12 = Guest(name: "Jimmy Butler", age: 31, isAttending: true)

let guestList2 = GuestList(guests: [g7, g8, g9, g10, g11, g12])
guestList2.printReport()


// MARK: Problem 4: Create a Shopping Cart
/* TODO: Data Modeling
 
 We first want to decide how to structure our data and model that out.
 - Product D.S. will have price and name
 - Cart D.S. will contain a list of these products
 
*/
struct Product {
    let name: String
    var price: Double // mutable because we might apply discounts, Double so we can have decimal points on our prices
    
/* TODO: Apply discounts to individual items (dollar and percentage)
 
 Placed in Product structure because a discount is going to be applied to each individual product

*/
    mutating func applyCashDiscount(amount: Double) {
        self.price -= amount
    }
    
    mutating func applyPercentageDiscount(percentage: Double) {
        price *= (1 - percentage) // 10 * 0.8 = 8.00
    }
}

struct Cart {
    var items: [Product]
    
/* TODO: - Add/remove products to/from cart

 We want to create 2 functions to help us with this.

 We want to place these functions inside our Cart struct, because ultimately we're going to be adding/removing products to the list 'var items: [Product]', so we only have access to that list inside of our shopping Cart struct

*/
    // Want to change anything within your struct from a function, need to mark mutating
    mutating func addItem(product: Product) {
        // Here we want to append the product we're passing in, into our items list
        items.append(product)
        
    }
    
    mutating func removeItem(product: Product) {
        
        for i in 0 ..< items.count {
            let item = items[i] // gives us access to the item (product) we're looking at in the array
            // checks if item we're passing in to remove is the same as the item we're looking at in that particular iteration of the loop
            if item.name == product.name && item.price == product.price  {
                self.items.remove(at: i) // index property is important here so we can access item that we want to remove in the array
                return // need this here so for loop will not go out of range since original array size has changed, stops for loop right here
            }
        }
    }

// TODO: - Get total sum

    func getTotal() -> Double {
        var result = 0.0
        
        for item in items {
            result += item.price
        }
        
        return result
    }
    
// TODO: - Print Receipt
    
    func printReceipt() {
        // Item 1: Macbook Pro - 1299.99
        for i in 0 ..< items.count {
            let product = items[i]
            print("Item \(i + 1): \(product.name) --- $\(product.price)")
        }
        print("Total")
        print("-----------------")
        print("$\(getTotal())")
         
    }
}

print("-----------------")

// Test Cases: Apple products
var p1 = Product(name: "Macbook Pro", price: 1299.99)
var p2 = Product(name: "AirPods Pro", price: 299.99)
var p3 = Product(name: "iPhone 15 Pro", price: 899.99)

var cart = Cart(items: [p1, p2, p3])

var p4 = Product(name: "iPad", price: 600)
p4.applyCashDiscount(amount: 100)

cart.addItem(product: p4)

cart.printReceipt()

cart.removeItem(product: p3)

cart.printReceipt()
