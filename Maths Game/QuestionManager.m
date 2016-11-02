//
//  QuestionManager.m
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timeOutput {
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    int i = 0;
    for (AdditionQuestion *item in self.questions) {
        totalTime = totalTime + item.answerTime;
        i++;
    }
    averageTime = totalTime/i;
    return [NSString stringWithFormat:@"Total time: %ds, average time: %ds", (int)totalTime, (int)averageTime];
}

@end
