//
//  ListsModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 4/30/24.
//

import SwiftUI

struct ListsModule: View {
    
    @State var isFightersExpanded = true
    @State var isTeamsExpanded = true
    
    @State var fighters = [
        "Sean O'Malley",
        "Ilia Topuria",
        "Islam Makhachev",
        "Sean Strickland",
        "Shavkat Rakhmonov",
        "Alex Pereira",
        "Merab Dvalishvili",
        "Khamzat Chimaev",
        "Max Holloway"
    ]
    
    @State var teams = [
        "Lightweight",
        "Featherweight",
        "Middleweight",
        "Bantamweight",
        "Welterweight"
    ]
    
    
    
    var body: some View {
        List {
            
            Section("Fighter", isExpanded: $isFightersExpanded) { // new iOS 17 initializer for Section, isExpanded boolean - this value, together with .sidebar list style brings back the arrow and functionality to expand/collapse section 
                ForEach(fighters, id: \.self) { fighter in
                    Text(fighter)
                }
                .onDelete(perform: { indices in  // swipe action to delete
                    fighters.remove(atOffsets: indices)
                })
            }
            
            Section("Teams", isExpanded: $isTeamsExpanded) {
                ForEach(teams, id: \.self) { team in
                    Text(team)
                }
                .onDelete(perform: { indices in
                    teams.remove(atOffsets: indices)
                })
            }
        }
        .listStyle(.sidebar)

    }
}

#Preview {
    ListsModule()
}
