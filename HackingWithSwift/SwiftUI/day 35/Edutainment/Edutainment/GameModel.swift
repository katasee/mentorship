//
//  GameModel.swift
//  Edutainment
//
//  Created by Katasee on 03/11/2024.
//

import Foundation
import SwiftUICore

struct mySecondScreen: View {
    private var multiplicationQuestions: [String] = {
        var questions = [String]()
        for i in 2...12 {
            for j in 1...20 {
                questions.append("\(i)x\(j)")
            }
        }
        return questions
    }()
    private var multiplicationResault:[Int] = {
        var resault = [Int]()
        for i in 2...12 {
            for j in 1...20 {
                resault.append(i * j)
            }
        }
        return resault
    }()
    
    
    @State private var correctAnswer: Int = Int.random (in: 0...220)
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.cyan, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                title()
                //                button()
                    .padding()
                Spacer()
            }
        }
    }
    func title() -> some View {
        Text(multiplicationQuestions[correctAnswer])
            .font(.largeTitle.weight(.semibold))
    }
}
//    func button() -> some View {
//        ForEach(0..<4) { number in
//            Button {
//                print("ok")
//            } label: {
//            }
//        }
//    }
//}


