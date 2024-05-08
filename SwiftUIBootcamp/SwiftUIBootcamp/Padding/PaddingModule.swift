//
//  PaddingModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 4/16/24.
//

import SwiftUI

struct PaddingModule: View {
    var body: some View {
        VStack {
           Text("Hello, World! How are you doing today?")
                .background(.red)
                .padding() // all edges
                .background(.blue)
            
           Text("Horizontal Padding")
                .padding(.horizontal, 32) // left + right
                .background(.purple )
            
           Text("Vertical Padding")
                .padding(.vertical) // top + bottom
                .background(.green)
            
           Text("Leading Padding")
                .padding(.leading) // left or leading edge
                .background(.pink)
           
           Text("Trailing Padding")
                .padding(.trailing) // right or trailing edge
                .background(.cyan)
            
           Text("Top Padding")
                .padding(.top)
                .background(.yellow)
            
           Text("Bottom Padding")
                .padding(.bottom) 
                .background(.orange)
        }
    }
}

#Preview {
    PaddingModule()
}
