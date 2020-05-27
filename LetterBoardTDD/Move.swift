//
//  Move.swift
//  LetterBoardTDD
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//

import Foundation

struct Move: Equatable {
    
    enum Direction {
        case left
        case right
    }
    
    let direction: Direction
    let letter: Character? // use nil to represent nothing captured
    
    init(direction: Direction, letter: Character?) {
        self.direction = direction
        self.letter = letter
    }
    
    init(direction: Direction) {
        self.direction = direction
        self.letter = nil
    }
}

func ==(lhs: Move, rhs: Move) -> Bool {
    return lhs.direction == rhs.direction && lhs.letter == rhs.letter
}

typealias Moves = [Move]

typealias Board = [Character]
