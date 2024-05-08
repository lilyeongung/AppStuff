//
//  SpacersModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 4/17/24.
//

import SwiftUI

struct SpacersModule: View {
    var body: some View {
//        VStack {
//            Text("Spacers Module")
//            
//            Spacer()
//                .frame(width: 24) // specify width, because height is dynamic
//                .background(.red)
//            
//            Text("Spacers Module")
//        }
        
//        HStack {
//            Text("Horizontal")
//            
//            Spacer()
//                .frame(height: 24) // specify height, because width is dynamic
//                .background(.blue)
//            
//            Text("Horizontal")
//        }
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
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundColor(.blue)
                
            }
            
            Divider()
            
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
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .foregroundColor(.blue)
                
            }
            
            Divider()
            
            Spacer()
            
        }
        .padding()
        
    }
}

#Preview {
    SpacersModule()
}
