//
//  QuestionManager.h
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray * questions;

- (NSString *) timeOutput;

@end
