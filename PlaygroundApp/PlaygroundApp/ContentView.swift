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
            HStack {
                Text("First app")
                    .font(.title)
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            
                Button("Read more") {
                }
                .padding(24)
                .background(Color.red)
                .foregroundStyle(Color.black)
            }
        }
    }


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
