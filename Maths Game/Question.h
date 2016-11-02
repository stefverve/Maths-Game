//
//  AdditionQuestion.h
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate * startTime;
@property (nonatomic) NSDate * endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end
