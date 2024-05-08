//
//  ImagesModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 3/20/24.
//

import SwiftUI

struct ImagesModule: View {
    var body: some View {
        // Images from SF Symbols use Image(systemName: )
        
//        Image(systemName: "heart.circle.fill") 
//            .resizable()
//            .foregroundColor(.pink)
////            .font(.largeTitle)
////            .imageScale(.large)
//            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/) // needs .resizable modifier to fill frame
        
        // Images from our Assets folder
        Image("omalley_sean")
            .resizable()
//            .scaledToFit() // scales to fill/fit original aspect-ratio
            .frame(width: 80, height: 80)
            .clipShape(Circle())
    }
}

#Preview {
    ImagesModule()
}
