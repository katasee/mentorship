//
//  ContentView.swift
//  PlaygroundApp
//
//  Created by Katasee on 23/09/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        
        VStack {
            Text("First app ") .font(.largeTitle) + Text(Image(systemName: "person.crop.circle"))
                .font(.largeTitle)
            
            HStack {
                Button("Read more") {
                }
                .padding(30)
                .background(Color.red)
                .foregroundColor(.black)
                
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
