//
//  RockPaperScissorsTests.swift
//  RockPaperScissorsTests
//
//  Created by David Lam on 9/11/18.
//  Copyright © 2018 David Lam. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import RockPaperScissors

class RockPaperScissorsTests: QuickSpec {
    
    override func spec() {
        describe("RockPaperScissorsTests") {
            var result: Result!
            context("Rock beats scissors") {
                context("I have chosen rock") {
                    context("when opponent has chosen scissors") {
                        beforeEach {
                            result = play(playerOne: .rock, playerTwo: .scissors)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.playerOneWin))
                        }
                    }
                }
                context("I have chosen scissors") {
                    context("when opponent has chosen rock") {
                        beforeEach {
                            result = play(playerOne: .scissors, playerTwo: .rock)
                        }
                        
                        it("player two should win the game") {
                            expect(result).to(equal(.playerTwoWin))
                        }
                    }
                }
            }
            context("Scissors beats paper") {
                context("I have chosen scissors") {
                    context("when opponent has chosen paper") {
                        beforeEach {
                            result = play(playerOne: .scissors, playerTwo: .paper)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.playerOneWin))
                        }
                    }
                }
                context("I have chosen paper") {
                    context("when opponent has chosen scissors") {
                        beforeEach {
                            result = play(playerOne: .paper, playerTwo: .scissors)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.playerTwoWin))
                        }
                    }
                }
            }
            context("Paper beats rock") {
                context("I have chosen paper") {
                    context("when opponent has chosen rock") {
                        beforeEach {
                            result = play(playerOne: .paper, playerTwo: .rock)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.playerOneWin))
                        }
                    }
                }
                context("I have chosen rock") {
                    context("when opponent has chosen paper") {
                        beforeEach {
                            result = play(playerOne: .rock, playerTwo: .paper)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.playerTwoWin))
                        }
                    }
                }
            }
            context("Same moves result in draw") {
                context("I have chosen rock") {
                    context("when opponent has chosen rock") {
                        beforeEach {
                            result = play(playerOne: .rock, playerTwo: .rock)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.draw))
                        }
                    }
                }
                context("I have chosen scissors") {
                    context("when opponent has chosen scissors") {
                        beforeEach {
                            result = play(playerOne: .scissors, playerTwo: .scissors)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.draw))
                        }
                    }
                }
                context("I have chosen paper") {
                    context("when opponent has chosen paper") {
                        beforeEach {
                            result = play(playerOne: .paper, playerTwo: .paper)
                        }
                        
                        it("player one should win the game") {
                            expect(result).to(equal(.draw))
                        }
                    }
                }
            }
        }
    }
    
}
