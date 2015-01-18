//
//  main.m
//  Groceries
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *groceries;
        NSMutableArray *glist = [NSMutableArray array];
        [glist addObject:@"beer"];
        [glist addObject:@"oj"];
        [glist addObject:@"raspberries"];
        [glist insertObject:@"cereal"
                    atIndex:0];
        
        for (NSString *s in glist) {
            NSLog(@"item in list: %@", s);
        }
        
//        NSString *firstItem = glist[0];
        
        // old school
        NSString *firstItem = [glist objectAtIndex:0];
        
        NSLog(@"first item in glist: %@", firstItem);
        NSLog(@"entire glist: %@", glist);
    }
    return 0;
}
