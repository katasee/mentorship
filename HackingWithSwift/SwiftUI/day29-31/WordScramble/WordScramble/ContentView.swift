//
//  ContentView.swift
//  WordScramble
//
//  Created by Katasee on 27/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords: [String] = [String]()
    @State private var rootWord: String = ""
    @State private var newWord: String = ""
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    @State private var hasError: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                createUserWordSection()
                showUsedWords()
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $hasError) { } message: {
                Text(errorMessage)
            }
            
            countUserWords()
                .toolbar {
                    Button("Restart", action: restartGame)
                }
        }
    }
    
    func createUserWordSection() -> some View {
        Section{
            TextField("Enter your words", text: $newWord)
                .textInputAutocapitalization(.never)
        }
    }
    
    func showUsedWords() -> some View {
        Section {
            ForEach(usedWords, id:\.self) { word in
                HStack {
                    Image(systemName: "\(word.count).circle")
                    Text(word)
                }
            }
        }
    }
    
    func countUserWords() -> some View {
        Text("Score : \(usedWords.count)")
    }
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 2 else { return }
        if rootWord == answer {
            return
        }
        
        guard checkIfWordIsOriginal(word: answer) else {
            showErrorMessage(title: "Word used already", message: "Be more original!")
            return
        }
        
        guard checkIfWordIsPossible(word: answer) else {
            showErrorMessage(title: "Word not possible", message: "You can't spell that word from '\(rootWord)'")
            return
        }
        
        guard checkIfWordIsReal(word: answer) else {
            showErrorMessage(title: "Word not recognizee", message: "You can't make themup, you know!")
            return
        }
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkworm"
                return
            }
        }
        fatalError("Could not load start.txt from bundle.")
    }
    
    func checkIfWordIsOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func checkIfWordIsPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        return true
    }
    
    func checkIfWordIsReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
    
    func showErrorMessage(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        hasError = true
    }
    
    func restartGame() {
        startGame()
        usedWords.removeAll()
    }
}

#Preview {
    ContentView()
}
