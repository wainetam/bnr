//
//  main.m
//  VowelMovement
//
//  Created by Waine Tam on 12/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        // Create arrays of strings and a container for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
//        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // declare the block variable
//        void (^devowelizer)(id, NSUInteger, BOOL *); // without using typedef
        ArrayEnumerationBlock devowelizer; // using typedef above
        
        // compose a block and assign it to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // did I find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; // prevent further iterations
                return; // end this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // iterate over the array of vowels, replacing occurrences of each with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
        
            [devowelizedStrings addObject:newString];
        }; // end of block assignment
        
        // iterate over the array with your block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
