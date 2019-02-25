//
//  Concentration.swift
//  Concentration
//
//  Created by zanyzephyr on 2019/2/23.
//  Copyright © 2019 puyan. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        cards[index].isFaceUp = !cards[index].isFaceUp
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
}
