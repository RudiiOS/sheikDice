//
//  ViewController.swift
//  SheikDice
//
//  Created by Leart on 12/15/18.
//  Copyright © 2018 RudiLeart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dices = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    var randomDiceOne: Int = 0
    var randomDiceTwo: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDices()
    }

    @IBAction func rollDices(_ sender: Any) {
       updateDices()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDices()
    }
    
    func updateDices(){
        randomDiceOne = Int.random(in: 0...5)
        randomDiceTwo = Int.random(in: 0...5)
        
        diceOne.image = UIImage(named: dices[randomDiceOne])
        diceTwo.image = UIImage(named: dices[randomDiceTwo])
    }
    
}

