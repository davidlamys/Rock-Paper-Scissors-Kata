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
    let game = playerOneChoice.rawValue + playerTwoChoice.rawValue
    return resultMapping[game]!
}

let resultMapping: [String: Result] =
    [
        Choice.rock.rawValue + Choice.rock.rawValue         : .draw,
        Choice.rock.rawValue + Choice.paper.rawValue        : .playerTwoWin,
        Choice.rock.rawValue + Choice.scissors.rawValue     : .playerOneWin,
        
        Choice.paper.rawValue + Choice.rock.rawValue        : .playerOneWin,
        Choice.paper.rawValue + Choice.paper.rawValue       : .draw,
        Choice.paper.rawValue + Choice.scissors.rawValue    : .playerTwoWin,
        
        Choice.scissors.rawValue + Choice.rock.rawValue     : .playerTwoWin,
        Choice.scissors.rawValue + Choice.paper.rawValue    : .playerOneWin,
        Choice.scissors.rawValue + Choice.scissors.rawValue : .draw
    ]

