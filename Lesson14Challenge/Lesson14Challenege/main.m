//
//  main.m
//  Lesson14Challenege
//
//  Created by Waine Tam on 6/12/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"Current date: %@", now);
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear: 1979];
        [comps setMonth: 11];
        [comps setDay: 20];
        [comps setHour: 13];
        [comps setMinute: 10];
        [comps setSecond: 0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];

        double secondsSinceEarlierDate = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Seconds since birth: %f", secondsSinceEarlierDate);
    }
    return 0;
}

