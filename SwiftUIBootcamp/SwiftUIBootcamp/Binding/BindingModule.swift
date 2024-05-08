//
//  BindingModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/3/24.
//

import SwiftUI

struct BindingModule: View {
    @State var isOn = false
    @State var showBatteryLife = false
    
    var body: some View {
        VStack {
            
            
            Text("Notifications: \(isOn ? "Enabled" : "Disabled")")
            
            if showBatteryLife {
                Text("Battery: 100%")
            }
            
            SettingsRowView(imageName: "bell.circle.fill", title: "Notifications", isOn: $isOn)  // refactored
            
            SettingsRowView(imageName: "battery.100.circle.fill", title: "Battery Life", isOn: $showBatteryLife)  

            
            
        }
    }
}

#Preview {
    BindingModule()
}

struct SettingsRowView: View {
    let imageName: String
    let title: String
    @Binding var isOn: Bool  // bound to Parent: @State property

    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.blue)
                
                Text(title)
                    .font(.subheadline)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
