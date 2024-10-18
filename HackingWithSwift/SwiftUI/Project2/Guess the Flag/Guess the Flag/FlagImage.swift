//
//  FlagImage.swift
//  Guess the Flag
//
//  Created by Katasee on 18/10/2024.
//

import SwiftUI

struct FlagImage: View {
    var flagName: String
    
    var body: some View {
        Image(flagName)
            .clipShape(.capsule)
            .shadow(radius: 10)
    }
}
