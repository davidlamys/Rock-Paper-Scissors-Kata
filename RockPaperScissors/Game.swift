//
//  Game.swift
//  RockPaperScissors
//
//  Created by David Lam on 15/11/18.
//  Copyright © 2018 David Lam. All rights reserved.
//

import Foundation

func play(playerOne playerOneChoice: Choice,
          playerTwo playerTwoChoice: Choice) -> Result {
    if playerOneChoice == playerTwoChoice {
        return .draw
    }
   
    return playerOneChoice > playerTwoChoice ? .playerOneWin : .playerTwoWin
}

