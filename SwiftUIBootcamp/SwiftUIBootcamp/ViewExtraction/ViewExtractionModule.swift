//
//  ViewExtractionModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/1/24.
//

import SwiftUI

struct ViewExtractionModule: View {
    var body: some View {
        ScrollView {
           
            FighterRowView(fighterName: "Sean O'Malley", imageName: "omalley_sean", teamName: "Bantamweight")
            FighterRowView(fighterName: "Max Holloway", imageName: "holloway_max", teamName: "Featherweight")
            FighterRowView(fighterName: "Ilia Topuria", imageName: "topuria_ilia", teamName: "Featherweight")
            FighterRowView(fighterName: "Alex Pereira", imageName: "pereira_alex", teamName: "Middleweight")
            
        }
        .padding()
    
    }
}

struct FighterRowView: View {
    let fighterName: String
    let imageName: String
    let teamName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .background(.blue)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(fighterName)
                    .fontWeight(.semibold)
                
                Text(teamName)
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
            
            Spacer()

        }
        
        
    }
}


#Preview {
    ViewExtractionModule()
}
