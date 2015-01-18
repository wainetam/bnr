//
//  main.m
//  InterestingNames
//
//  Created by Waine Tam on 6/13/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // Read in a file as a huge string (ignoring possibility of an error)
        NSString *properNameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding: NSUTF8StringEncoding error:NULL];

        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        // Break it into an array of strings
        NSArray *properNames = [properNameString componentsSeparatedByString:@"\n"];
        
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        for(NSString *w in words) {
            // Go thru the array one string at a time
            for(NSString *n in properNames) {
                // lowerCase n
                NSString *lowerN = [n lowercaseString];
                if([lowerN isEqualToString:w]) {
                    NSLog(@"word in dict %@", w);
                    NSLog(@"lowercase proper %@", lowerN);
                    NSLog(@"properName %@", n);
                }
//                NSRange r = [w rangeOfString:lowerN options:NSAnchoredSearch];
                // Was it found?
//                if(r.location != NSNotFound) {
//                if(r.location != NSNotFound) {
//                    NSLog(@"%@", n);
//                }
            }
        }
    }
    return 0;
}


