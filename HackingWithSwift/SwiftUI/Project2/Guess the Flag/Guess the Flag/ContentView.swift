//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Katasee on 12/10/2024.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    public func applyIf<Content: View>(
        _ condition: () -> Bool,
        @ViewBuilder modifiers: (Self) -> Content
    ) -> some View {
        if condition() {
            modifiers(self)
        } else {
            self
        }
    }
}

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
    @State private var animationAmount: Double = 0.0
    @State private var currentIndex: Int? = nil
    
    var body: some View {
        ZStack{
            backgroundColor()
            
            VStack {
                Spacer()
                guessTheFlag()
                    .titleStyle()
                
                VStack(spacing: 15) {
                    VStack {
                        flagBackground()
                        flagTitle()
                    }
                    button
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                liveScore()
                
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
    
    func backgroundColor() -> some View {
        RadialGradient(stops: [
            .init(color: Color(red: 0.51, green: 0.22, blue:0.85), location: 0.3),
            .init(color: Color(red: 0.25, green: 0.55, blue:0.5), location: 0.3)
        ], center: .top, startRadius: 420, endRadius: 700)
        .ignoresSafeArea()
    }
    
    func flagBackground() -> some View {
        Text("Tap the flag of")
            .foregroundStyle(.secondary)
            .font(.subheadline.weight(.heavy))
    }
    
    func flagTitle() -> some View {
        Text(countries[correctAnswer])
            .font(.largeTitle.weight(.semibold))
    }
    
    func guessTheFlag() -> some View {
        Text("Guess the Flag")
    }
    
    var button: some View {
        ForEach(0..<3)  { number in
            Button {
                flagTapped(number)
                currentIndex = number
                animationAmount += 360
                counter += 1
                if counter == 4 {
                    restart()
                }
            } label: {
                FlagImage(flagName: countries[number])
                    .applyIf ({ number == number}) { view in
                        view
                            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
                    }
                    .opacity(currentIndex == nil || number == currentIndex ? 1 : 0.25)
                    .scaleEffect(currentIndex == nil || number == currentIndex ? 1: 0.75)
            }
        }
    }
    
    func liveScore() -> some View {
        Text ("Score: \(score)")
            .foregroundStyle(.white)
            .font(.title.bold())
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
        currentIndex = nil
    }
    
    func restart() {
        endGame = true
        showingScore = false
        finalScore = "Your score is \(score)"
        resetGame()
    }
    
    func resetGame() {
        score = 0
        counter = 0
        currentIndex = nil
    }
}

#Preview {
    ContentView()
}
