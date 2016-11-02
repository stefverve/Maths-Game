//
//  MultiplicationQuestion.m
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld * %ld", (long)super.leftValue, (long)super.rightValue];
    super.answer = super.leftValue * super.rightValue;
}

@end
