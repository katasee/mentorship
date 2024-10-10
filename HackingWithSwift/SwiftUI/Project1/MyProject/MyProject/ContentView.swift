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
    
    let usd = ["USD": 1.0, "EUR": 1.1, "PLN": 4.3]
    let eur = ["USD": 0.91, "EUR": 1.0, "PLN": 3.9]
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
    
    let background = Color(UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1.0))
    var body: some View {
        
        NavigationStack {
            ZStack{
                background
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        VStack {
                            Spacer(minLength: 32)
//                            Section ("Curreency convert") {
                                Text("Curreency convert")
                                .font(.subheadline)
                                .foregroundStyle(Color.gray)
                                .frame(width: 350, height: 15,alignment: .leading)

                                TextField("Enter amout", value: $amount, format: .currency(code: currencyToExchange))
                                    .keyboardType(.decimalPad)
                                    .padding(11)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white))
                            
                            }
                        }
                    
                    VStack (spacing: 1) {
                            Picker("FROM", selection: $currencyToExchange) {
                                ForEach (currency, id:\.self) {
                                    Text($0)
                                        .onChange(of: currencyToExchange) { newValue in
                                            convert()
                                        }
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding(7)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white))
                            
                        Divider()
                        
                            Picker("TO", selection: $currencyExchanged) {
                                ForEach (currency, id:\.self) {
                                    Text($0)
                                        .onChange (of: currencyExchanged) { newValue in
                                            convert()
                                            
                                        }
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding(7)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white))
                            
                        
                        
                    }
                        VStack {
                            Text("Conversion")
                            .font(.subheadline)
                            .foregroundStyle(Color.gray)
                            .frame(width: 350, height: 15,alignment: .leading)
                            Text(convertToAmount, format: .currency(code: (currencyExchanged)))
                                .frame(width: 350, height: 30,alignment: .leading)
                                .padding(7)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white))
                            
                                
                                
                        }
//                        .pickerStyle(.menu)
                    }
             .padding(.horizontal, 24)
                }
                .navigationTitle("Exchange 24")
                
            }
            
        }
    }


#Preview {
    ContentView()
}
