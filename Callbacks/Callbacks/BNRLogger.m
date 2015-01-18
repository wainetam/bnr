//
//  BNRLogger.m
//  Callbacks
//
//  Created by Waine Tam on 12/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRLogger.h"

@interface BNRLogger ()
- (void)zoneChange:(NSNotification *)note;
@end

@implementation BNRLogger
- (NSString *)lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

// called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    // create a mutable data if it does not exist already
    if(!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

// called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // uncomment the next line to see the entire fetched file
//    NSLog(@"The whole string is %@", string);
}

// called if the fetch fails
- (void)connection:(NSURLConnection *)connection
  didFailWitherror:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"The system time zone has changed!");
}


@end
