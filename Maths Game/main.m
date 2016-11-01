//
//  main.m
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"0";
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        while ([input isNotEqualTo:@"quit"]) {
            AdditionQuestion *q = [[AdditionQuestion alloc] init];
            NSLog(@"What is %@?", q.question);
            input = [[[InputHandler alloc]init] getString];
            if (input.intValue == q.answer) {
                NSLog(@"Right!");
                score.right++;
            } else if ([input isEqualToString:@"quit"]) {
                NSLog(@"%@", [score result]);
            } else {
                NSLog(@"Wrong!");
                score.wrong++;
            }
        }
    }
    return 0;
}
