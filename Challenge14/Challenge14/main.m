//
//  main.m
//  Challenge14
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSDate *now = [[NSDate alloc] init];
//        NSDate *birthDate = [[NSDate]];
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:20];
        [comps setMonth:11];
        [comps setYear:1979];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
//        NSDate *timeSince = [[NSDate alloc] init];
        
        double seconds = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Interval since my birth %f", seconds);
    }
    return 0;
}
