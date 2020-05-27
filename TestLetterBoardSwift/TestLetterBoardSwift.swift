//
//  TestLetterBoardSwift.swift
//  TestLetterBoardSwift
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//

import XCTest

class TestLetterBoardSwift: XCTestCase {
    
    override func setUp() {
        // called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // called after the invocation of each test method in the class.
    }
    
    func testLetterBoardUsingCat() {
        let testBoard: Board = [ "a", "z", "c", "t", "v", "a" ]
        let word = "cat"
        
        let moves = LetterBoardSwift.solveLetterBoard(board: testBoard, word: word)
        let expected = [
            /* c */ Move(direction: .left),
                    Move(direction: .left),
                    Move(direction: .left, letter: "c"),
            /* a */ Move(direction: .right),
                    Move(direction: .right, letter: "a"),
            /* t */ Move(direction: .left),
                    Move(direction: .left, letter: "t")
        ]
        XCTAssertEqual(expected, moves)
    }
    
    func testLetterBoardUsingTV() {
        let testBoard: Board = [ "a", "z", "c", "t", "v", "a" ]
        let word = "tv"
        
        let moves = LetterBoardSwift.solveLetterBoard(board: testBoard, word: word)
        let expected = [
            /* t */ Move(direction: .right),
                    Move(direction: .right),
                    Move(direction: .right, letter: "t"),
            /* v */ Move(direction: .left, letter: "v")
        ]
        
        XCTAssertEqual(expected, moves)
    }
    
}
