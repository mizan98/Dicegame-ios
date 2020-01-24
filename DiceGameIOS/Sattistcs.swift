//
//  Sattistcs.swift
//  DiceGameIOS
//
//  Created by Code Nation on 26/11/2019.
//  Copyright © 2019 Mizan-Ahmed-Choudhury. All rights reserved.
//

import Foundation

var timesPlayed = 0.0
var timesWon = 0.0
var successRate = 0.0

func timesPlayedCounter() {
    timesPlayed += 1
    }


func timesWonCounter() {
    timesWon += 1
}

func successRateCounter () {
    successRate = ((timesWon / timesPlayed) * 100.rounded(.toNearestOrEven))
}
