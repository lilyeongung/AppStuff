  //
//  ScrollViewsModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 4/30/24.
//

import SwiftUI

struct ScrollViewsModule: View {
    let fighterImages = [
        "omalley_sean",
        "topuria_ilia",
        "makhachev_islam",
        "strickland_sean",
        "rakhmonov_shavkat",
        "pereira_alex",
        "dvalishvili_merab",
        "chimaev_khamzat"
    ]
    
    let foodImages = [
        "pizza",
        "japanese-tapas",
        "ramen",
        "sushi",
        "steak",
        "burger"
    ]
    
    var body: some View {
//        ScrollView(.horizontal) {
//            HStack {
//                ForEach(fighterImages, id: \.self) { image in
//                    Image(image)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 64, height: 64)
//                        .clipShape(Circle())
//                        
//                }
//            }
//        }
        
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(foodImages, id: \.self) { foodImage in
                        VStack(alignment: .leading) {
                            Image(foodImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 360, height: 150)
                                .cornerRadius(10)
                                    
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Shoto")
                                    .fontWeight(.semibold)
                                
                                Text("$0.99 Delivery Fee | 15 - 30 min")
                                    .foregroundColor(.gray)
                            }
                            .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsModule()
}
