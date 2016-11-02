//
//  QuestionFactory.h
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

- (Question *) generateRandomQuestion;

@end
