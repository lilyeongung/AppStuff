//
//  ShapesModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 3/20/24.
//

import SwiftUI

struct ShapesModule: View {
    var body: some View {
//        Circle()
//            // .stroke(lineWidth: 24)
//            // .fill(.purple)
//            .foregroundColor(.pink) // 2 diff options for applying color to shape
//            .frame(width: 200, height: 200) // Positions the view within an invisible frame with the specified size.
        
//        Rectangle()
//            .fill(.blue)
//            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            .cornerRadius(10) // rounds corner - good design practice
        
        Capsule()
            .fill(.cyan)
            .frame(width: 200, height: 64)
        
    }
}

#Preview {
    ShapesModule()
}
