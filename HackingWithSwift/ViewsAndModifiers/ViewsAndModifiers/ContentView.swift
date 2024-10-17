//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Katasee on 16/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello, world!") {
            print(type(of: self.body))
        }
        .background(.red)
        .frame(width: 200, height: 200)
    }
}

#Preview {
    ContentView()
}
