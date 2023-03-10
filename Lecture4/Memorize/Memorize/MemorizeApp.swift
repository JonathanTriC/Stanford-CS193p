//
//  MemorizeApp.swift
//  Memorize
//
//  Created by JonathanTriC on 31/01/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
