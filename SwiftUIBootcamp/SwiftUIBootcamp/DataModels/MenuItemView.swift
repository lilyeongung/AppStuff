//
//  MenuItemView.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/2/24.
//  "Child View"

import SwiftUI

struct MenuItemView: View {
    let menuItem: MenuItem
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menuItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(menuItem.restaurantName)
                    .fontWeight(.semibold)
                
                Text(menuItem.type)
                    .foregroundColor(.gray)
                
                Text("$0.99 Delivery Fee | 15 - 30 min")
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    MenuItemView(menuItem: MenuItem(imageName: "sushi", type: "japanese", restaurantName: "Nobu"))
}
