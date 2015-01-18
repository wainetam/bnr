//
//  main.c
//  CountDown
//
//  Created by Waine Tam on 6/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <readline/readline.h>
#import <stdlib.h>
#import <stdio.h>

int main(int argc, const char * argv[])
{
    printf("Where do I start counting? ");
    const char *input = readline(NULL);
    int index = atoi(input);
    
    for(int i = index; i >= 0; i = i - 3) {
        printf("%i\n", i);
        if(i % 5 == 0) {
            printf("Found one!\n");
        }
    }
    return 0;
}

