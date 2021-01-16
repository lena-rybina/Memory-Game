//
//  EmojiMemoryGameView.swift
//  Memory Game
//
//  Created by Elena Rybina on 11/3/20.
//  Copyright © 2020 Elena Rybina. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
   @ObservedObject var gameViewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            HStack {
                ForEach(gameViewModel.cards) { card in
                    CardView(card: card) .onTapGesture {
                        self.gameViewModel.choose(card: card)
                    }
                }
            }
            .foregroundColor(.pink)
            .font(.largeTitle)
        }.padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle (cornerRadius: 10).fill(Color.white)
                RoundedRectangle (cornerRadius: 10).stroke(lineWidth: 2)
                Text(card.content)
            } else {
                RoundedRectangle (cornerRadius: 10).fill()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(gameViewModel: EmojiMemoryGame())
    }
}
