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
        Grid(gameViewModel.cards) { card in
                    CardView(card: card)
                        .onTapGesture {
                        self.gameViewModel.choose(card: card)
            }
            .padding(5)
            .foregroundColor(.pink)
        }
        .padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }


func body(for size: CGSize) -> some View {
    ZStack {
        if card.isFaceUp {
            RoundedRectangle (cornerRadius: cornerRadius)
                .fill(Color.white)
            RoundedRectangle (cornerRadius: cornerRadius)
                .stroke(lineWidth: lineWidth)
            Text(card.content)
        } else {
            RoundedRectangle (cornerRadius: cornerRadius)
                .fill()
            }
        }
    .font(Font
            .system(size: min(size.width, size.height) * fontScaleFactor))
}
    let cornerRadius: CGFloat = 10.0
    let lineWidth: CGFloat = 2
    let fontScaleFactor: CGFloat = 0.6
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(gameViewModel: EmojiMemoryGame())
    }
}


