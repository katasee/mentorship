//
//  ContentView.swift
//  MyProject
//
//  Created by Katasee on 07/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var usd = 0.0
    @State private var pln = 0.0
    @FocusState private var focus: Bool
    
    var exchange: Double{
        let afterChange = usd * 3.9
        return afterChange
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Write your $ value"){
                    TextField("Amount", value: $usd, format: .currency(code: "USD"))
                        .keyboardType(.decimalPad)
                        .focused($focus)
                                 }
                
                Section ("Your PLN value") {
                    Text(exchange, format: .currency(code: "PLN"))
                }
            }
            .navigationTitle("Exchange")
            .toolbar {
                if focus {
                    Button ("Done") {
                        focus = false
                    }
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
