//
//  ScoreKeeper.m
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)result {
    return [NSString stringWithFormat:@"Right: %ld, Wrong: %ld, Score: %d%%", (long)self.right, (long)self.wrong, (int)(self.right*100 / (float)(self.right + self.wrong))];
}


@end
