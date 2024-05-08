//
//  TabViewModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/6/24.
//

import SwiftUI

struct TabViewModule: View {
    
    var body: some View {
        TabView {
            RedOneView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            BlueTwoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            GreenThreeView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
        }
        .accentColor(.red)
        .onAppear() {
            UITabBar.appearance().backgroundColor = .systemGray
        }
        
    }
}


#Preview {
    TabViewModule()
}
