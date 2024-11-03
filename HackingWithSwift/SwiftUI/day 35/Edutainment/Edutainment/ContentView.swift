//
//  ContentView.swift
//  Edutainment
//
//  Created by Katasee on 02/11/2024.
//

import SwiftUI

struct ContentView: View {
    let questions = [5, 15, 20]
    @State private var selectQuestion = 5
    @State private var difficultyLevel = 2
    var body: some View {
        NavigationStack {
            ZStack{
                
                LinearGradient(colors: [.cyan, .white], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                NavigationLink ("Start Game", destination: mySecondScreen())
                
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                    .frame(width: 300, height: 150)
                    .background(LinearGradient(colors: [.white, .cyan], startPoint: .top, endPoint: .bottom))
                    .clipShape(.buttonBorder)
                    .shadow(radius: 10)
                
                VStack{
                    
                    Spacer()
                    
                    Menu("", systemImage: "gearshape"){
                        Picker("How many questions", selection: $selectQuestion) {
                            ForEach(questions, id: \.self) {
                                Text($0, format: .number)
                            }
                        }
                        Stepper("What is the difficulty level:\(difficultyLevel)", value: $difficultyLevel, in: 2...12, step: 1)
                        
                        Text("Setting")
                    }
                    .pickerStyle(.menu)
                    
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                }
            }
            .navigationTitle("Edutainment")
        }
    }
}

#Preview {
    ContentView()
}
