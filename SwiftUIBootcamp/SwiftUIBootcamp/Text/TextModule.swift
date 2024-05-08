//
//  TextModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 3/20/24.
//
//  Modifiers are used to customize Views
//  SwiftUI is a declarative framework and it relies heavily on modifiers to style and customize our views
//      Allows us to apply various transformations: changing color, font, alignment layout, adding animations, etc.

import SwiftUI

struct TextModule: View {
    var body: some View {
        Text("Hello, Bootcamp! This is the best bootcamp for SwiftUI in the world!")
            .font(.subheadline) // view modifier
            .foregroundColor(.blue)
            .fontWeight(.light)
            .multilineTextAlignment(.center)
            .italic()
            .underline()
            .padding()
    }
}

#Preview {
    TextModule()
}
