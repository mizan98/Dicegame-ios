//
//  ViewController2.swift
//  DiceGameIOS
//
//  Created by Code Nation on 26/11/2019.
//  Copyright © 2019 Mizan-Ahmed-Choudhury. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    //MARK:Variables
    var toggle = true
    var player1Score = 0
    var player2Score = 0
    var randomRollIndex = 0
    var dice = [#imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    //           0   1   2   3   4   5

    //MARK: outlets
    @IBOutlet weak var ruleslabel1: UILabel!
     @IBOutlet weak var ruleslabel2: UILabel!
     @IBOutlet weak var diceImage: UIImageView!
     @IBOutlet weak var rollButton: UIButton!
    //MARK: functions

    @IBAction func buttonFunction(_ sender: Any) {
        rollLogic()
    }

    func rollLogic(){
        randomRollIndex = Int.random(in: 0 ... 5)
        diceImage.image = dice[randomRollIndex]

        if (toggle){
            player1Score += randomRollIndex + 1
            ruleslabel1.text = "\(player1Score)"
            diceLogic()
        }
        else {
            player2Score += randomRollIndex + 1
            ruleslabel2.text = "\(player2Score)"
            diceLogic()
        }
    }

    func diceLogic(){
        if(randomRollIndex == 0){
            ruleslabel1.text = "You lose sir"
            if (toggle){
                player1Score = 0
                toggle = false
            }
            else {
            ruleslabel2.text = "You lose sir"
            player2Score = 0
            toggle = true
            }
        }
        else if (player1Score >= 21) {
            player1Score = 0
            player2Score = 0
            ruleslabel1.text = "congrats"
        }
        else if (player2Score >= 21) {
            player1Score = 0
            player2Score = 0
            ruleslabel2.text = "congrats"
        }
        else {
            return
        }
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
