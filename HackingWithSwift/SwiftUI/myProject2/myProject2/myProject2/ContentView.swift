//
//  ContentView.swift
//  myProject2
//
//  Created by Katasee on 18/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var computerOption: Int = Int.random(in: 0...2)
    @State private var rightСhoice: Bool = false
    @State private var optionToСhoice: [String] = ["✊", "✋", "✌️"].shuffled()
    @State private var score: Int = 0
    @State private var myChoiсe: String = ""
    @State private var counter: Int = 0
    @State private var endGame: Bool = false
    @State private var finalScore: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors:[.blue, .yellow], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 50) {
                    Spacer()
                    VStack {
                        computerСhoiceText()
                        goodСhoiceText()
                    }
                    .bold()
                    .font(.system(size: 20))
                    
                    VStack {
                        myTurnLabel()
                    }

                        HStack {
                            ForEach(0..<3) { index in
                                
                                Button {
                                    if index == 0 {
                                        rock()
                                    } else if index == 0 {
                                        paper()
                                    }
                                    else {
                                        scissons()
                                    }
                                } label: {
                                    Text(optionToСhoice[index])
                                        .padding(20)
                                        .background(.black)
                                        .foregroundStyle(.white)
                                        .clipShape(.buttonBorder)
                                        .font(.system(size: 70))
                                }
                            }
                        }
                    
                    VStack {
                        Spacer()
                        Text("Score: \(score)")
                    }
                    .font(.system(size: 40))
                }
            }
            .alert("Game over", isPresented: $endGame) {
                Button ("Restart") {}
            } message: {
                Text("\(finalScore)")
            }
            .navigationTitle("Rock, Paper, Scissons!")
        }
    }
    
    func computerСhoiceText() -> some View {
        Text(optionToСhoice[computerOption])
            .font(.largeTitle.weight(.semibold))
    }
    
    func myTurnLabel() -> some View {
        Text("\(myChoiсe)")
            .font(.system(size: 150))
            .padding(25)
            .background(Color.secondary)
            .clipShape(.circle)
            .shadow(radius: 40)
    }
    
    func goodСhoiceText() -> some View {
        if rightСhoice == true {
            Text("You win")
        } else {
            Text("You lose")
        }
    }
    
    func rock()  {
        counter += 1
        if computerOption == 0 {
            myChoiсe = "✊"
            score += 1
            newGame()
            rightСhoice = true
        }
        else if computerOption == 1 {
            myChoiсe = "✊"
            score -= 1
            newGame()
        } else {
            myChoiсe = "✊"
            score += 1
            newGame()
            rightСhoice = true
        }
    }
    
    func paper() {
        counter += 1
        if computerOption == 0 {
            myChoiсe = "✋"
            score += 1
            newGame()
            rightСhoice = true
        } else if computerOption == 1 {
            myChoiсe = "✋"
            score += 1
            newGame()
            rightСhoice = true
        } else {
            myChoiсe = "✋"
            score -= 1
            newGame()
        }
    }
    
    func scissons() {
        counter += 1
        if computerOption == 0 {
            myChoiсe = "✌️"
            score -= 1
            newGame()
        }
        else if computerOption == 1 {
            myChoiсe = "✌️"
            score += 1
            newGame()
            rightСhoice = true
        } else {
            myChoiсe = "✌️"
            score += 1
            newGame()
            rightСhoice = true
        }
    }
    
    func newGame () {
        computerOption = Int.random(in: 0...2)
        rightСhoice = false
        if counter == 10 {
            restart()
        }
        
        func restart() {
            endGame = true
            finalScore = "Your score is \(score)"
            resetGame()
        }
        
        func resetGame () {
            score = 0
            counter = 0
        }
    }
}

#Preview {
    ContentView()
}
