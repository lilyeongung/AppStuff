//
//  ButtonsModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/1/24.
//

import SwiftUI

struct ButtonsModule: View {
    
    @State var rectangleColor = Color.blue
    @State var title = "Hello"
    
    var body: some View {
    
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .cornerRadius(10)
                .foregroundColor(rectangleColor)
            
            Text(title)
                .font(.title)
            
            
            Button("Click me") {
                rectangleColor = .pink
                title = "Basic button"
            }
            .padding()
            
            Button {
                rectangleColor = .purple
                title = "Custom button"
            } label: {
                Text("Custom Button")
                    .font(.headline)
                    .frame(width: 360, height: 48)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            
            Button(action: {
                rectangleColor = .red
                title = "Image button"
            }, label: {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
            })

            
        }
    }
}

#Preview {
    ButtonsModule()
}


/*
 In SwiftUI, @State is a Property wrapper used to create and manage mutable states within a view. It's a fundamental concept that allows you to store and track changes to a value so your view can automatically update whenever that value changes. @State is used primarily for managing small amounts of mutable data that are specific to a single view
 */
