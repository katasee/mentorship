//
//  Emoji.swift
//  myProject2
//
//  Created by Katasee on 20/10/2024.
//
import SwiftUI


struct Emoji: View {
    var emojiName: String
    
    var body: some View {
        Image(emojiName)
            .clipShape(.capsule)
            .shadow(radius: 10)
    }
}
