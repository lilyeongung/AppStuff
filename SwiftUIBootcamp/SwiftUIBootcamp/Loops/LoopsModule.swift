//
//  LoopsModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 4/18/24.
//

import SwiftUI

struct LoopsModule: View {
    
    // Loop through data structure to create exact amount of items we need
    let fighters: [String] = [
        "Sean Omalley",
        "Ilia Topuria",
        "Islam Makhachev",
        "Sean Strickland",
        "Shavkat Rakhmonov"
    ]
    
    var body: some View {
        
        VStack {
            
            // replace our range with array we created (0 ... 10 -> fighters,)
            ForEach(fighters, id: \.self) { fighter in // replace index with 'fighter' (something that makes sense)
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
                        
                        Text(fighter)   // replace hard code with fighter names
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "paperplane.circle.fill")
                        .foregroundColor(.blue)
                    
                }

            }
            
            Text("Loop ended")
        }
        .padding()
        
    }
}

#Preview {
    LoopsModule()
}
