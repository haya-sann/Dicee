//
//  ViewController.swift
//  Dicee
//
//  Created by Nobuo Hayashi on 3/16/18.
//  Copyright © 2018 MacEvent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
  
    }
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        let image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView1.image = image
        let image with _ = UIImage(named: diceArray[randomDiceIndex2])
        diceImageView2.image = image
        print(randomDiceIndex1, randomDiceIndex2)//Just for debugging
    }
    
//    func updateDiceImages(){
//        randomDiceIndex1 = Int(arc4random_uniform(6))
//        randomDiceIndex2 = Int(arc4random_uniform(6))
//
//        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
//        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
//        print(randomDiceIndex1, randomDiceIndex2)//Just for debugging
//    }
//
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        for _ in 1...10 {
            updateDiceImages()
            sleep(1)
            }
        }

}
