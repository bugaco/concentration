//
//  ViewController.swift
//  Concentration
//
//  Created by 李懿哲 on 2019/2/19.
//  Copyright © 2019 puyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
    @IBOutlet weak var flipCountLabel: UILabel!
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        
    }
    func flipCard(withEmoji emoji: String, on sender: UIButton) {
        
        if sender.currentTitle == emoji {
            sender.setTitle("", for: .normal)
            sender.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            sender.setTitle(emoji, for: .normal)
            sender.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
}

