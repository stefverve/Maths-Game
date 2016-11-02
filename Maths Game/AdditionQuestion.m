//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        _question = [NSString stringWithFormat:@"%d + %d", num1, num2];
        _answer = num1 + num2;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

@end
