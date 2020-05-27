//
//  Move.h
//  LetterBoardTDD
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    left, right
} Direction;

@interface Move : NSObject

{
    Direction _direction;
    unichar _letter;
}
- (instancetype) init;
- (instancetype) initWithDirection:(Direction)dir andLetter:(unichar)ch;
- (Direction) direction;
- (unichar) letter;
- (BOOL) isEqual:(id)object;

@end

