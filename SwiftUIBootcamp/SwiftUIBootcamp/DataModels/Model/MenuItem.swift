//
//  MenuItem.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/2/24.
//

import Foundation


// Blueprint for our menu
struct MenuItem: Identifiable {
    var id = NSUUID().uuidString
    
    let imageName: String
    let type: String
    let restaurantName: String
}
