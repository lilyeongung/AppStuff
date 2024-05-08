//
//  ControlFlowModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/1/24.
//

import SwiftUI

struct ControlFlowModule: View {
    @State var showImage = true
    @State var didLike = false
    @State var likes = 500
    
    var body: some View {
//        if showImage {
//            // show an image
//            Image(systemName: "heart.fill")
//                .resizable()
//                .frame(width: 64, height: 64)
//                .foregroundColor(.red)
//            
//        } else {
//            Text("No image to show..")
//        }
        
        VStack {
            Button(action: {
                didLike.toggle()  // This takes current state of boolean and makes it opposite
                
                if didLike {
                    likes += 1  // when I like something, add 1
                } else {
                    likes -= 1  // when I unlike something, subtract 1
                }
                
            }, label: {
                Image(systemName: didLike ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .foregroundColor(didLike ? .red : .black)
                
//                if didLike {
//                    Image(systemName:"heart.fill")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundColor(.red)
//                } else {
//                    Image(systemName:"heart")
//                        .resizable()
//                        .frame(width: 64, height: 64)
//                        .foregroundColor(.black)
//                }
            })
            
            Text("\(likes) likes")
                .font(.headline)
            
        }
    }
}

#Preview {
    ControlFlowModule()
}

/*
 In Swift, a ternary statement is a concise way to write a conditional expression that results in one of two values based on a condition.
 
 It's also known as the ternary conditional operator and has the following syntax:
 
 condition ? valueIfTrue : valueIfFalse
 
 Here's how it works:
 
 condition is an expression that evaluates to either true or false.
 If condition is true, the expression returns valueIfTrue.
 If condition is false, the expression returns valueIfFalse.
 
 */
