//
//  ScoreKeeper.h
//  Maths Game
//
//  Created by Stefan Verveniotis on 2016-11-01.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

- (instancetype)init;
- (NSString *)result;

@end
