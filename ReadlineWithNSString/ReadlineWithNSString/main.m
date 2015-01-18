//
//  main.m
//  ReadlineWithNSString
//
//  Created by Waine Tam on 6/13/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <readline/readline.h>
#import <stdio.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        printf("Who is cool? ");
        const char *name = readline(NULL);
        NSString *s = [NSString stringWithUTF8String:name];
        NSLog(@"%@ is cool!\n\n", s);
    }
    return 0;
}

