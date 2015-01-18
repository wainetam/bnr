//
//  main.c
//  Ternary
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 20;
    int j = 25;
    int k = (i > j) ? 10 : 5;
    
    if (5 < j - k) {
        printf("The first expression is true.");
    } else if (j > i) {
        printf("The second expression is true.");
    } else {
        printf("Neither is true.");
    }
    
    return 0;
}
