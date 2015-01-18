//
//  main.m
//  TimesTwo
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSDate *currentTime = nil;
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSDate *copyOfCurrentTime = currentTime;
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        
        NSLog(@"copyOfCurrentTime's value is %p", copyOfCurrentTime);
     
//        currentTime = nil;
//        NSLog(@"currentTime's value is %p", currentTime);
        
        NSString *dateString = [NSString stringWithFormat: @"The date is %@", currentTime];
        NSLog(dateString);
        
    }
    return 0;
}
