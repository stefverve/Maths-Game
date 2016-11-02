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
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"0";
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *qM = [[QuestionManager alloc] init];
        while ([input isNotEqualTo:@"quit"]) {
            AdditionQuestion *q = [[AdditionQuestion alloc] init];
            [qM.questions addObject:q];
            NSLog(@"What is %@?", q.question);
            input = [[[InputHandler alloc]init] getString];
            if (input.intValue == q.answer) {
                NSLog(@"\nRight! %@", [qM timeOutput]);
                score.right++;
            } else if ([input isEqualToString:@"quit"]) {
                NSLog(@"%@ %@", [score result], [qM timeOutput]);
            } else {
                NSLog(@"\nWrong! %@", [qM timeOutput]);
                score.wrong++;
            }
        }
    }
    return 0;
}
