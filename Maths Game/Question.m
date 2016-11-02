//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
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

- (void)generateQuestion {
}

@end
