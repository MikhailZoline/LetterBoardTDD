//
//  Move.m
//  LetterBoardTDD
//
//  Created by Mikhail Zoline on 5/26/20.
//  Copyright © 2020 Mikhail Zoline. All rights reserved.
//

#import "Move.h"

@implementation Move

- (instancetype) init {
    self = [super init];
     _direction = left;
    _letter = 0;
    return self;
}

- (instancetype) initWithDirection:(Direction)dir andLetter:(unichar)ch {
    self = [super init];
    _direction = dir;
    _letter = ch;
    return self;
}

- (Direction) direction {
    return _direction;
}

- (unichar) letter {
    return _letter;
}

- (BOOL) isEqual:(id)object {
    return (_letter == [object letter] && _direction == [object direction]);
}

@end
