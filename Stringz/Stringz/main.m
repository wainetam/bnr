//
//  main.m
//  Stringz
//
//  Created by Waine Tam on 12/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for(int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // declare a pointer to an NSError object, but don't instantiate it
        // the NSError instance will only be created if there is, in fact, an error
        NSError *error;
        
        // pass the NSError pointer by reference to the NSString method
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        // test the returned BOOL, and query the NSError if the write failed
        if(success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
    }
    return 0;
}
