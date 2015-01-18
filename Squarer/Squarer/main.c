//
//  main.c
//  Squarer
//
//  Created by Waine Tam on 6/9/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void square(n) {
    int result = n * n;
    printf("\"%d\" squared is \"%d\"\n", n, result);
}

int main(int argc, const char * argv[]) {
    square(5);
    return 0;
}

