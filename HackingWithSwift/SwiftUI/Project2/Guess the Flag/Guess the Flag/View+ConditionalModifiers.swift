//
//  View+ConditionalModifiers.swift
//  Guess the Flag
//
//  Created by Katasee on 02/11/2024.
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
