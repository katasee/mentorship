//
//  ContentView.swift
//  MyProject
//
//  Created by Katasee on 07/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var currencyToExchange = "USD"
    @State private var currencyExchanged = "EUR"
    @State private var amount: Double = 0
    
    @State private var convertToAmount: Double = 0
    var currency = ["USD", "EUR", "PLN"]
    
    let usd = ["USD": 1.1, "EUR": 1.0, "PLN": 4.3]
    let eur = ["USD": 1.0, "EUR": 0.91, "PLN": 3.9]
    let pln = ["USD": 0.26, "EUR": 0.23, "PLN": 1.0]
    
    func convert () {
        if currencyToExchange == "USD" && currencyExchanged == "EUR" {
            guard let rate = usd["EUR"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "USD" && currencyExchanged == "PLN" {
            guard let rate = usd["PLN"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "USD" && currencyExchanged == "USD" {
            guard let rate = usd["USD"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "EUR" && currencyExchanged == "EUR" {
            guard let rate = eur["EUR"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "EUR" && currencyExchanged == "PLN" {
            guard let rate = eur["PLN"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "EUR" && currencyExchanged == "USD" {
            guard let rate = eur["USD"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "PLN" && currencyExchanged == "PLN" {
            guard let rate = pln["PLN"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "PLN" && currencyExchanged == "USD" {
            guard let rate = pln["USD"] else { return }
            convertToAmount = rate * amount
        } else if currencyToExchange == "PLN" && currencyExchanged == "EUR" {
            guard let rate = pln["EUR"] else { return }
            convertToAmount = rate * amount
            return
        }
    }
    
    var body: some View {
        VStack {
            NavigationStack{
                Form {
                    Section ("Curreency convert") {
                        TextField("Enter amout", value: $amount, format: .number)
                            .keyboardType(.decimalPad)
                    }
                    Section {
                        Picker("FROM", selection: $currencyToExchange) {
                            ForEach (currency, id:\.self) {
                                Text($0)
                                    .onChange(of: currencyToExchange) { newValue in
                                        convert()
                                    }
                            }
                        }
                        Picker("TO", selection: $currencyExchanged) {
                            ForEach (currency, id:\.self) {
                                Text($0)
                                    .onChange(of: currencyExchanged) { newValue in
                                        convert()
                                    }
                            }
                        }
                        }
                    Section ("Conversion") {
                        Text(amount, format: .number)
                            
                            
                    }
                    .pickerStyle(.menu)
                    
                }
                .navigationTitle("Exchange24")
            }
        }
    }
}




#Preview {
    ContentView()
}
