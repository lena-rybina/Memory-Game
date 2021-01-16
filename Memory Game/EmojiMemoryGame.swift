//
//  EmojiMemoryGame.swift
//  Memory Game
//
//  Created by Elena Rybina on 11/9/20.
//  Copyright © 2020 Elena Rybina. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
   @Published private var gameModel: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojiList = ["🧡","💛","❤️"]
//        let randomEmoji = emojiList.randomElement()!
        
        return MemoryGame<String>(numberOfCardPairs: emojiList.count) { pairIndex in
            return emojiList[pairIndex]
            
        }
    }
    
    // MARK: Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        gameModel.cards
    }
    
    // MARK: Intents
    
    func choose(card: MemoryGame<String>.Card) {
        gameModel.choose(card: card)
    }
    
}

