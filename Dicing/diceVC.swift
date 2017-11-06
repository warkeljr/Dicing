//
//  diceVC.swift
//  Dicing
//
//  Created by W.S. van Arkel jr. on 06-11-17.
//  Copyright © 2017 warcom. All rights reserved.
//

import UIKit

class diceVC: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollBtn: UIButton!
    @IBOutlet weak var diceLogo: UIImageView!
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    let diceArry = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        
    }
    
    @IBAction func rollPressed(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArry[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArry[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

