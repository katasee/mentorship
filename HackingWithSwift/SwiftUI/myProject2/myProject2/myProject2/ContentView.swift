//
//  ContentView.swift
//  myProject2
//
//  Created by Katasee on 18/10/2024.
//

import SwiftUI
struct ContentView: View {
    @State private var computerСhoice: Int = Int.random(in: 0...2)
    @State private var rightСhoice: Bool = false
    @State private var optionToСhoice: [String] = ["✊", "✋", "✌️"].shuffled()
    @State private var score: Int = 0
    @State private var myChoise: String = ""
    @State private var counter: Int = 0
    @State private var endGame: Bool = false
    @State private var finalScore: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors:[.blue, .yellow], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 50) {
                    Spacer()
                    VStack  {
                        compChoose()
                        goodChoise()
                    }
                    .bold()
                    .font(.system(size: 20))
                    
                    VStack{
                        myturn()
                    }
                    
                    HStack (spacing: 15) {
                        HStack {
                            Button("✊"){
                                counter += 1
                                rock()
                            }
                            .padding(20)
                            .background(Color.black)
                            .clipShape(.buttonBorder)
                            .font(.system(size: 70))
                            
                            Button("✋") {
                                counter += 1
                                paper()
                            }
                            .padding(20)
                            .background(.black)
                            .clipShape(.buttonBorder)
                            .font(.system(size: 70))
                            
                            Button("✌️"){
                                counter += 1
                                scissons()
                            }
                            .padding(20)
                            .background(.black)
                            .clipShape(.buttonBorder)
                            .font(.system(size: 70))
                        }
                    }
                    
                    VStack{
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
    
    func compChoose() -> some View {
        Text(optionToСhoice[computerСhoice])
            .font(.largeTitle.weight(.semibold))
    }
    
    func rock()  {
        if computerСhoice == 0 {
            myChoise = "✊"
            score += 1
            newGame()
            rightСhoice = true
        }
        else if computerСhoice == 1 {
            myChoise = "✊"
            score -= 1
            newGame()
        } else {
            myChoise = "✊"
            score += 1
            newGame()
            rightСhoice = true
        }
    }
    
    func paper() {
        if computerСhoice == 0 {
            myChoise = "✋"
            score += 1
            newGame()
            rightСhoice = true
        }
        else if computerСhoice == 1 {
            myChoise = "✋"
            score += 1
            newGame()
            rightСhoice = true
        } else {
            myChoise = "✋"
            score -= 1
            newGame()
        }
    }
    
    func scissons() {
        if computerСhoice == 0 {
            myChoise = "✌️"
            score -= 1
            newGame()
        }
        else if computerСhoice == 1 {
            myChoise = "✌️"
            score += 1
            newGame()
            rightСhoice = true
        } else {
            myChoise = "✌️"
            score += 1
            newGame()
            rightСhoice = true
        }
    }
    
    func myturn() -> some View {
        Text("\(myChoise)")
            .font(.system(size: 150))
            .padding(25)
            .background(Color.secondary)
            .clipShape(.circle)
            .shadow(radius: 40)
    }
    
    func goodChoise() -> some View {
        if rightСhoice == true {
            Text("You win")
        } else {
            Text("You lose")
        }
    }
    
    func newGame () {
        computerСhoice = Int.random(in: 0...2)
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
//        func button() -> some View {
//            ForEach(0..<3) { number in
//                Button {
//                } label: {
//                    Text(optionToСhoice[number])
//        .padding(20)
//        .background(.black)
//        .foregroundStyle(.white)
//        .clipShape(.buttonBorder)
//        .font(.system(size: 70))
//                }
//            }
//        }



#Preview {
    ContentView()
}
