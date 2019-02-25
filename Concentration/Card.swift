//
//  Card.swift
//  Concentration
//
//  Created by zanyzephyr on 2019/2/23.
//  Copyright © 2019 puyan. All rights reserved.
//

import Foundation

struct Card {
    
    static var identifierFactory: Int = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    init() {
        identifier = Card.getUniqueIdentifier()
    }
    
}
