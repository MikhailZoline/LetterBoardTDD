//
//  TestLetterBoardObj_C.m
//  TestLetterBoardObj-C
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Move.h"
#import "LetterBoardObj-C.h"

@interface TestLetterBoardObj_C : XCTestCase

@end

@implementation TestLetterBoardObj_C

- (void)testLetterBoardUsingCat {
    NSArray *testRes = [LetterBoardObj_C solveLetterBoard:@"azctva" ForWord:@"cat"];
    NSArray *expectedRes = [NSArray arrayWithObjects:
                            [[Move alloc]initWithDirection:left andLetter:0],
                            [[Move alloc]initWithDirection:left andLetter:0],
                            [[Move alloc]initWithDirection:left andLetter:'c'],
                            [[Move alloc]initWithDirection:right andLetter:0],
                            [[Move alloc]initWithDirection:right andLetter:'a'],
                            [[Move alloc]initWithDirection:left andLetter:0],
                            [[Move alloc]initWithDirection:left andLetter:'t'], nil
                            ];
    
    XCTAssertTrue([testRes isEqualToArray:expectedRes]);
}

- (void)testLetterBoardUsingTV {
    NSArray *testRes = [LetterBoardObj_C solveLetterBoard:@"azctva" ForWord:@"tv"];
    NSArray *expectedRes = [NSArray arrayWithObjects:
                            [[Move alloc]initWithDirection:right andLetter:0],
                            [[Move alloc]initWithDirection:right andLetter:0],
                            [[Move alloc]initWithDirection:right andLetter:'t'],
                            [[Move alloc]initWithDirection:left andLetter:'v'], nil
                            ];
    
    XCTAssertTrue([testRes isEqualToArray:expectedRes]);
}

@end
