//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by JonathanTriC on 09/02/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["✈️", "🚗", "🚂", "🚀", "🚁", "🚒", "🛵", "🚕", "🛳️", "🚔", "🛻", "🏎️", "🚑", "🚲", "🚘", "🚛", "🚙", "🚚", "🏍️", "🛶", "⛴️", "🚤", "🚎", "🚖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intents
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
