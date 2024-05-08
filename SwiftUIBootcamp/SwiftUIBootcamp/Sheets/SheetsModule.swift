//
//  SheetsModule.swift
//  SwiftUIBootcamp
//
//  Created by Andrew Park on 5/6/24.
//

import SwiftUI

struct Contact: Identifiable {
    var id = NSUUID().uuidString
    let name: String
}

enum SheetConfig: Int, Identifiable {
    case sheet1  // login prompt
    case sheet2  // login view
    case sheet3
    
    var id: Int { return self.rawValue }
}



struct SheetsModule: View {
    @State private var showSheet = false
    @State private var showSheet2 = false
    @State private var selectedContact: Contact?
    
    @State private var sheetConfig: SheetConfig?
    
    let contacts: [Contact] = [
        .init(name: "Michael Jordan"),
        .init(name: "Kobe Bryant"),
        .init(name: "Lebron James")
    ]
    
    var body: some View {
        VStack {
            Button("Click Me") {
                sheetConfig = .sheet1

            }
            Button("Click Me 2") {
                sheetConfig = .sheet2
            }
            
            Button("Click Me 3") {
                sheetConfig = .sheet3
            }
            
            
//            List {
//                ForEach(contacts) { contact in
//                    Text(contact.name)
//                        .onTapGesture {
//                            selectedContact = contact
//                        }
//                }
//            }
        }
//        .sheet(item: $selectedContact, content: { contact in
//            Text("Selected contact is \(contact.name)")
//        })
        
//        .fullScreenCover(isPresented: $showSheet, content: {
//            Button("Dismiss Me") {
//                showSheet.toggle()
//            }
//        })
        .sheet(item: $sheetConfig, content: { config in
            switch config {
            case .sheet1:
                Text("Sheet 1")
                    .presentationDetents([.medium])
            case .sheet2:
                Text("Sheet 2")
                    .presentationDetents([.height(200)]) 
            case .sheet3:
                Text("Sheet 3")

            }
        })
        
        .sheet(isPresented: $showSheet, content: {
            Text("Sheet 1")
                .presentationDetents([.height(200), .medium, .large])
                .presentationBackgroundInteraction(.enabled(upThrough: .medium))
//                .interactiveDismissDisabled()
        })
        .padding()
    }
}

#Preview {
    SheetsModule()
}
