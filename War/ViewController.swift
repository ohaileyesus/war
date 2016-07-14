//
//  ViewController.swift
//  War
//
//  Created by Omega Haileyesus on 5/2/16.
//  Copyright © 2016 Omega Haileyesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
  
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    
    
    
    var cardNamesArray:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        let firstrand:Int = Int(arc4random_uniform(13))
        let firststring:String =  self.cardNamesArray[firstrand]
        
        self.firstCardImageView.image = UIImage(named: firststring)
        
        let secrand = Int(arc4random_uniform(13))
        let secstring:String =  self.cardNamesArray[secrand]
        
        self.secondCardImageView.image = UIImage(named: secstring)
        
        
        if firstrand > secrand {
            self.playerScore  += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        
        if firstrand < secrand {
            self.enemyScore  += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
        
        
    }

}

