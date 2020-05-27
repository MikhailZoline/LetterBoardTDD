//
//  LetterBoardSwift.swift
//  LetterBoardTDD
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//

import Foundation

class LetterBoardSwift {
    
    static func solveLetterBoard(board: Board, word: String) -> Moves {
        var board = board
        var res = [Move]().self
        let letters = Array(word)
        for letter in letters {
            let leftDist = board.firstIndex(of: letter)!
            let rightDist = -board.reversed().firstIndex(of: letter)!.distance(to: 0)
            
            if leftDist <= rightDist {
                for _ in 0 ..< leftDist {
                    board.append(board.removeFirst())
                    res.append(Move(direction: .left, letter: nil))
                }
                res.append(Move(direction: .left, letter: board.removeFirst()))
            }
            else {
                for _ in 0 ..< rightDist {
                    board.insert(board.removeLast(), at: 0)
                    res.append(Move(direction: .right, letter: nil))
                }
                res.append(Move(direction: .right, letter: board.removeLast()))
            }
        }
        return res
    }
    
}
