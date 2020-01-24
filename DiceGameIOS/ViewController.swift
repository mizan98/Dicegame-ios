//
//  ViewController.swift
//  DiceGameIOS
//
//  Created by Code Nation on 25/11/2019.
//  Copyright © 2019 Mizan-Ahmed-Choudhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:Variables
    var playerScore = 0
    var randomRollIndex = 0
    var dice = [#imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    //           0   1   2   3   4   5
    
    //MARK: outlets
    @IBOutlet weak var ruleslabel: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    //MARK: functions

    @IBAction func resetButton(_ sender: Any) {
        playerScore = 0
        ruleslabel.text = "\(playerScore)"
        buttonEnabled()
    }
    
    @IBAction func buttonFunction(_ sender: Any) {
        rollLogic()
    }
    
    func rollLogic(){
        randomRollIndex = Int.random(in: 0 ... 5)
        diceImage.image = dice[randomRollIndex]
        playerScore += randomRollIndex + 1
        ruleslabel.text = "\(playerScore)"
        diceLogic()
    }
    
    func diceLogic(){
        if(randomRollIndex == 0){
            playerScore = 0
            ruleslabel.text = "You lose sir"
            buttonEnabled()
            timesPlayedCounter()
        }
        else if (playerScore >= 21) {
            playerScore = 0
            ruleslabel.text = "congrats ma'am"
            buttonEnabled()
            resetButton.isHidden = true
            timesWonCounter()
        }
        else {
            return
        }
    timesPlayedCounter()
    successRateCounter()
    }
    
    func buttonEnabled(){
        rollButton.setTitle("Press me to play", for: .normal)
        
        if (rollButton.isEnabled) {
            rollButton.isEnabled = false
        }
            rollButton.isEnabled = true
        
        resetButton.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resetButton.setTitle("Reset", for: .normal)
        resetButton.isHidden = true
        // Do any additional setup after loading the view.
    }

}

