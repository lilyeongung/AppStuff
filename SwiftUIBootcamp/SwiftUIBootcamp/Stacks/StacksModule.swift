//
//  StacksModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 3/27/24.
//

import SwiftUI

struct StacksModule: View {
    var body: some View {
        
        // Stacks Challenge: UI for Threads clone
        VStack(alignment: .leading, spacing: 12) {
            // cell 1
            HStack {
                // profile image
                Image("omalley_sean")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                // name stuff
                VStack(alignment: .leading) {
                    Text("sugeasean")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Suga Sean O'Malley")
                        .font(.subheadline)
                }
            }
            
            Divider() // divider spans entire width of screen
            
            // cell 2
            HStack {
                // profile image
                Image("topuria_ilia")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                
                // name stuff
                VStack(alignment: .leading) {
                    Text("iliatopuria")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("El Matador")
                        .font(.subheadline)
                }
            }
            
            Divider()
            
        }
        .padding()
        
 
        
        // A view that arranges its subviews in a vertical line, Nested with ZStack -> Button in real life applications
//        VStack(alignment: .center, spacing: 32) {
//            ZStack {
//                Rectangle()
//                    .fill(.pink)
//                    .frame(width: 200, height: 50)
//                    .cornerRadius(10)
//                
//                Text("Hello, World!")
//                    .foregroundColor(.white)
//                    .font(.headline)
//            }
//            
//            HStack {
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(10)
//                
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(10)
//            }
//        }

        // A view that arranges its subviews in a horizontal line
//        HStack(alignment: .bottom, spacing: 24) {
//            VStack {
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 400)
//                    .cornerRadius(10)
//                
//                Text("Revenue")
//            }
//            
//            VStack {
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 100, height: 200)
//                    .cornerRadius(10)
//                
//                Text("Profit")
//            }
//            
//            VStack {
//                Rectangle()
//                    .fill(.purple)
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(10)
//                
//                Text("Margins")
//            }
//        }
        
        // A view that overlays its subviews, aligning them in both axes, stacked on top of each other
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(.green)
//                .frame(width: 200, height: 200)
//                .cornerRadius(10)
//            
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//            
//            Rectangle()
//                .fill(.cyan)
//                .frame(width: 50, height: 50)
//                .cornerRadius(10)
//        }
    
    }
}

#Preview {
    StacksModule()
}
