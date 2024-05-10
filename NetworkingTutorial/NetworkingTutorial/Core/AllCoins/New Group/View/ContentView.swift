//
//  ContentView.swift
//  NetworkingTutorial
//
//  Created by Andrew Park on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CoinsViewModel()  // fetch info from API and supply View with data
    
    var body: some View {
        VStack {
            Text("\(viewModel.coin): \(viewModel.price) \(viewModel.currency)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
