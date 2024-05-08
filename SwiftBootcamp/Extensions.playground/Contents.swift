/*
 Extensions let us add functionality to classes, structs, and more, which is helpful for modifying types we don’t own – types that were written by Apple or someone else
 
 Extensions can add methods and computed properties, but not stored properties.
 
 */

import UIKit

var greeting = "           Hello, playground         "

// Want to get rid of whitespace, but sort of lengthy method
let trimmed = greeting.trimmingCharacters(in: .whitespacesAndNewlines)

// So we can create an extension
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

// Code completion & organization, short and concise
let extrimmed = greeting.trimmed()
