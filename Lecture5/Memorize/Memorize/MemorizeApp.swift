//
//  MemorizeApp.swift
//  Memorize
//
//  Created by JonathanTriC on 31/01/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
