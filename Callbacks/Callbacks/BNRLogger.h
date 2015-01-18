//
//  BNRLogger.h
//  Callbacks
//
//  Created by Waine Tam on 12/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

// BNRLogger will implement methods from NSURLConnectionDelegate & DataDelegate
@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime; // property that holds a date

- (NSString *)lastTimeString; // returns date as a string
- (void)updateLastTime:(NSTimer *)t; // action method

@end
