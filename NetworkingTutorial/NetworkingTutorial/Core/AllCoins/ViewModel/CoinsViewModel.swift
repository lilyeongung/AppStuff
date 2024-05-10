//
//  CoinsViewModel.swift
//  NetworkingTutorial
//
//  Created by Andrew Park on 5/9/24.
//

import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coin = ""
    @Published var price = ""
    @Published var currency = ""
    
    init() {
        fetchPrice(coin: "ethereum", currency: "eur")
        fetchPrice(coin: "litecoin", currency: "usd")
    }
    
    func fetchPrice(coin: String, currency: String) {
        
        let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=\(coin)&vs_currencies=\(currency)"
        guard let url = URL(string: urlString) else { return }
                
        URLSession.shared.dataTask(with: url) { data, response, error in
                        
            guard let data = data else { return }
            guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else { return }
            
            guard let value = jsonObject[coin] as? [String: Double] else {
                print("Failed to parse value")
                return
            }
            
            guard let price = value[currency] else { return }
           
            // Update data only when done with all our processes and back on main thread
            DispatchQueue.main.async {
                self.coin = coin.capitalized
                self.price = "$\(price)"
                self.currency = currency.uppercased()
            }
        }.resume()
    }
}
