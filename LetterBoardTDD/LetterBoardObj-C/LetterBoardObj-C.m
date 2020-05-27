//
//  LetterBoardObj-C.m
//  LetterBoardTDD
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//
#import "Move.h"
#import "LetterBoardObj-C.h"

@implementation LetterBoardObj_C

+(NSArray *)solveLetterBoard:(NSString*)boardString ForWord:(NSString*)word {
    NSArray *res = [[NSArray alloc] init];
    NSString *boardCpy = [NSString stringWithString:boardString];
    
    for ( UInt8 i= 0; i < [word length]; i++) {
        unichar c = [word characterAtIndex:i];
        NSRange leftRange = [boardCpy rangeOfString: [NSString stringWithFormat:@"%C",c ]];
        NSRange rightRange = [boardCpy rangeOfString: [NSString stringWithFormat:@"%C",c ] options:NSBackwardsSearch];
        UInt8 leftDist = leftRange.location;
        UInt8 righDist = boardCpy.length - (rightRange.location + 1);
        if (leftDist <= righDist) {
            
            for ( UInt8 leftMove = 0; leftMove < leftDist; leftMove++) {
                unichar c = [boardCpy characterAtIndex:0];
                NSString *tmp = [[boardCpy substringFromIndex:1] stringByAppendingString:[NSString stringWithFormat:@"%C", c ]];
                boardCpy = tmp;
                
                res = [res arrayByAddingObject:[[Move alloc] initWithDirection:left andLetter:0]];
            }
            unichar c = [boardCpy characterAtIndex:0];
            NSString *tmp = [boardCpy substringFromIndex:1];
            boardCpy = tmp;
            
            res = [res arrayByAddingObject: [[Move alloc] initWithDirection:left andLetter:c]];
        }
        else {
            
            for ( UInt8 rightMove = 0; rightMove < righDist; rightMove++) {
                UInt8 lastIndex = [boardCpy length] - 1 ;
                unichar c = [boardCpy characterAtIndex:lastIndex];
                NSString *tmp = [[NSString stringWithFormat:@"%C", c ]
                                 stringByAppendingString: [boardCpy substringToIndex: lastIndex]];
                boardCpy = tmp;
                
                res = [res arrayByAddingObject: [[Move alloc] initWithDirection:right andLetter:0]];
            }
            UInt8 lastIndex = [boardCpy length] - 1 ;
            unichar c = [boardCpy characterAtIndex:lastIndex];
            NSString *tmp = [boardCpy substringToIndex: lastIndex];
            boardCpy = tmp;
            res = [res arrayByAddingObject: [[Move alloc] initWithDirection:right andLetter:c]];
        }
        
    }
    return res;
}

@end
