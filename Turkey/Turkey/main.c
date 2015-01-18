//
//  main.c
//  Turkey
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    float weight = 14.2;
    
    printf("The turkey weighs %f.\n", weight);
    float cookingTime = 15.0 + 15.0 * weight;
    
    printf("Cook it for %f minutes.\n", cookingTime);
    
    return 0;
}
