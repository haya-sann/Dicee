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
    @IBOutlet weak var bonacinno: UIImageView!
    
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
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        // イメージビューを画面にセットする。
        self.view.addSubview(diceImageView1)
        self.view.addSubview(diceImageView2)
        
        print(randomDiceIndex1, randomDiceIndex2)
    }
    
    func slowDisplay() {
        // to run something in 10 seconds

        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.updateDiceImages()
        }
        
    }
    
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
//        for _ in 1...5 {
//            updateDiceImages()
//            sleep(1)
//            }

        delayWithSeconds(5){
            self.updateDiceImages()
        }
        
        delayWithSeconds(5){
            self.updateDiceImages()
        }
        
        delayWithSeconds(5){
            self.updateDiceImages()
        }
        
        delayWithSeconds(5){
            self.updateDiceImages()
        }
        
        delayWithSeconds(5){
            self.updateDiceImages()
        }
        
    }
    

}
