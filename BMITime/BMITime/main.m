//
//  main.m
//  BMITime
//
//  Created by Waine Tam on 12/14/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items insertObject:@"Zero" atIndex:0];
    
        // for every item in the array pointed to by items
        for (NSString *item in items) {
            // print a description
            NSLog(@"%@", item);
        }
        
//        BNRItem *item = [[BNRItem alloc] init];
        
//        [item setItemName:@"Red Sofa"];
//        item.itemName = @"Red Sofa";
        
//        [item setSerialNumber:@"A1B2C"];
//        item.serialNumber = @"A1B2C";
        
//        [item setValueInDollars:100];
//        item.valueInDollars = 5;
        
//        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);

        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                          valueInDollars:100
                                            serialNumber:@"A1B12C"];
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];

        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        
        NSLog(@"%@", itemWithNoName);
        
        items = nil;
    }
              
    return 0;
    
}
