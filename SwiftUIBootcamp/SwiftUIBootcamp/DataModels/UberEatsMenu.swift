//
//  UberEatsMenu.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/2/24.
//

import SwiftUI

struct UberEatsMenu: View {
    
    // custom data structure we created
    let menuItems: [MenuItem] = [
        .init(imageName: "japanese-tapas", type: "Japanese", restaurantName: "Shoto"),
        .init(imageName: "burger", type: "American", restaurantName: "Shake Shack"),
        .init(imageName: "pizza", type: "Italian", restaurantName: "Domino's"),
        .init(imageName: "sushi", type: "Japanese", restaurantName: "Nobu"),
        .init(imageName: "steak", type: "American", restaurantName: "Ruth's Chris"),
    ]
    
    
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(menuItems, id: \.restaurantName) { item in
                        MenuItemView(menuItem: item) // dependency injection
                    }
                }
            }
        }
    }
}

#Preview {
    UberEatsMenu()
}


