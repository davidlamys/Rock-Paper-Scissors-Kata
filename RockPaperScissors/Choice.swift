//
//  Choice.swift
//  RockPaperScissors
//
//  Created by David Lam on 15/11/18.
//  Copyright © 2018 David Lam. All rights reserved.
//

import Foundation

enum Choice: String {
    case scissors
    case rock
    case paper
}

extension Choice: Comparable {
    static func < (lhs: Choice, rhs: Choice) -> Bool {
        if lhs == .paper && rhs == .scissors {
            return true
        }
        
        if lhs == .scissors && rhs == .rock {
            return true
        }
        
        if lhs == .rock && rhs == .paper {
            return true
        }
        
        return false
    }
}
