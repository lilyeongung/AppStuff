//
//  GridsModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 4/30/24.
//

import SwiftUI

struct GridsModule: View {
    
    let columns: [GridItem] = [
        .init(.flexible(), spacing: 1),    // controls spacing between items
        .init(.flexible(), spacing: 1),
        .init(.flexible())
    ]
    
    let fighters = [
        "omalley_sean",
        "topuria_ilia",
        "makhachev_islam",
        "strickland_sean",
        "rakhmonov_shavkat",
        "pereira_alex",
        "dvalishvili_merab",
        "chimaev_khamzat",
        "holloway_max"
    ]
    
    
    // subtract 2 when we add 1 pixel of padding on each horizontal edge
    let dimension = (UIScreen.main.bounds.width / 3) - 2    // gets width of screen no matter what device & divide width of screen by 3 for 3 square items
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1) {   // controls spacing between rows
                ForEach(fighters, id: \.self) { fighter in
                    Image(fighter)
                        .resizable()
                        .scaledToFit()
                        .frame(width: dimension, height: dimension)
                        .clipShape(Rectangle())
                        .background(.blue)

                 }
            }
            .padding(.horizontal, 1)
        }
    }
}

#Preview {
    GridsModule()
}
