//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Katasee on 12/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var countries: [String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer: Int = Int.random (in: 0...2)
    @State private var showingScore: Bool = false
    @State private var scoreTitle: String = ""
    @State private var score: Int = 0
    @State private var finalTitleAlert: String = ""
    @State private var endGame: Bool = false
    @State private var counter: Int = 0
    @State private var finalScore: String = ""
    
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.51, green: 0.22, blue:0.85), location: 0.3),
                .init(color: Color(red: 0.25, green: 0.55, blue:0.5), location: 0.3)
            ], center: .top, startRadius: 420, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                            counter += 1
                            if counter == 8 {
                                restart()
                            }
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 10)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text ("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert("Game over", isPresented: $endGame) {
            Button ("Restart boss") {}
        } message: {
            Text("\(finalScore)")
            Button("The end") {
                restart()
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
            score -= 1
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func restart () {
        endGame = true
        finalScore = "Your score is \(score)"
        resetGame()
    }
    
    func resetGame() {
        score = 0
        counter = 0
        showingScore = false
    }
}

#Preview {
    ContentView()
}
