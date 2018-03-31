//
//  ViewController.swift
//  Concentration
//
//  Created by Raj Alur on 3/30/18.
//  Copyright © 2018 Raj Alur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipcount = 0 {
        didSet{
            FlipcountLabel.text = "Flips: \(flipcount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var FlipcountLabel: UILabel!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipcount += 1
        if let cardNumber = cardButtons.index(of: sender) {
        flipcard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else  {
            print("chosen not in cardbutton")
        }
    }

   
    func flipcard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

