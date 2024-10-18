//
//  Title.swift
//  Guess the Flag
//
//  Created by Katasee on 18/10/2024.
//
import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.yellow)
            .bold()
            .shadow(radius: 5)
    }
}

extension View {
    func titleStyle () -> some View {
        modifier(Title())
    }
}
