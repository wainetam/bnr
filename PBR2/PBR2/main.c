//
//  main.c
//  PBR2
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    // convert number of meters into floating pt number of feet
    double rawFeet = meters * 3.281;
    
    // complete feet as unsigned int
    unsigned int feet = (unsigned int) floor(rawFeet);
    
    if(ftPtr) {
        printf("Storing %u to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    // store number of inches at the supplied address
    
    if(inPtr) {
        printf("Storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
    
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.", meters, feet, inches);
    
    return 0;
}
