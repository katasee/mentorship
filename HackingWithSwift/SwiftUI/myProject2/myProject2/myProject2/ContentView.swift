//
//  ContentView.swift
//  myProject2
//
//  Created by Katasee on 18/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors:[.blue, .yellow], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
               
                
                VStack(spacing: 50) {
                    Spacer()
                    VStack  {
                        Text("Win/lose")
                    }
                    
                    VStack{
                        
                        Image("rock")
                            
                    }
                    .padding(30)
                    .background(Color.secondary)
                    .clipShape(.circle)
                    .shadow(radius: 20)
                    
                    Spacer()
                    
                    
                    HStack (spacing: 15) {
                        HStack {
                            Button("Rock ✊") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        }
                        .padding(20)
                        .background(.black)
                        .foregroundStyle(.white)
                        .clipShape(.buttonBorder)
                        
                        
                        
                        HStack {
                            Button("Peper ✋") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        }
                        .padding(20)
                        .background(.black)
                        .foregroundStyle(.white)
                        .clipShape(.buttonBorder)
                        
                        HStack{
                            Button("Scissons ✌️") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        }
                        .padding(20)
                        .background(.black)
                        .foregroundStyle(.white)
                        .clipShape(.buttonBorder)
                    }
                    VStack{
                        Spacer()
                        VStack  {
                            Text("Score:")
                            
                        }
                        Spacer()
                    }
                }
                
            }
            .navigationTitle("Rock, Paper, Scissons!")
        }
        
    }
}




#Preview {
    ContentView()
}
