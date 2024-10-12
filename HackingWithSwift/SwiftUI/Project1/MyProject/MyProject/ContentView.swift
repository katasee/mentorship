//
//  ContentView.swift
//  MyProject
//
//  Created by Katasee on 07/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var currencyToExchange: String = "USD"
    @State private var currencyExchanged: String = "EUR"
    @State private var amount: Double = 0
    @State private var convertToAmount: Double = 0
    
    var currency: [String] = ["USD", "EUR", "PLN"]
    let usd: [String: Double] = ["USD": 1.0, "EUR": 1.1, "PLN": 4.3]
    let eur: [String: Double] = ["USD": 0.91, "EUR": 1.0, "PLN": 3.9]
    let pln: [String: Double] = ["USD": 0.26, "EUR": 0.23, "PLN": 1.0]
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color(.secondarySystemBackground)
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        VStack {
                            titleOfTextField()
                            buildTextField()
                        }
                        
                        VStack(spacing: 1) {
                            firstPicker
                            Divider()
                            secondPicker
                        }
                        
                        VStack {
                            resultTitle
                            result
                        }
                    }
                    .padding(.horizontal, 24)
                }
                .navigationTitle("Exchange 24")
            }
        }
    }
    
    func titleOfTextField() -> some View {
        Text("Curreency convert")
            .font(.subheadline)
            .foregroundStyle(Color.gray)
            .frame(width: 350, height: 15,alignment: .leading)
    }
    
    func buildTextField() -> some View {
        TextField("Enter amount", value: $amount, format: .currency(code: currencyToExchange))
            .keyboardType(.decimalPad)
            .padding(11)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white))
    }
    
    var firstPicker: some View {
        Picker("FROM", selection: $currencyToExchange) {
            ForEach(currency, id: \.self) { currency in
                Text(currency)
            }
        }
        .onChange(of: currencyToExchange) { _ in
            convert()
        }
        .frame(maxWidth: .infinity)
        .padding(7)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white))
    }
    
    var secondPicker: some View {
        Picker("TO", selection: $currencyExchanged) {
            ForEach(currency, id: \.self) { currency in
                Text(currency)
            }
        }
        .onChange(of: currencyExchanged) { _ in
            convert()
        }
        .frame(maxWidth: .infinity)
        .padding(7)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white))
    }
    
    var resultTitle: some View {
        Text("Conversion")
            .font(.subheadline)
            .foregroundStyle(Color.gray)
            .frame(width: 350, height: 15,alignment: .leading)
    }
    
    var result: some View {
        Text(convertToAmount, format: .currency(code: (currencyExchanged)))
            .frame(width: 350, height: 30,alignment: .leading)
            .padding(7)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white))
    }
    
    private func convert () {
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
}

#Preview {
    ContentView()
}
