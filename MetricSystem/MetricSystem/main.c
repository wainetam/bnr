//
//  main.c
//  MetricSystem
//
//  Created by Waine Tam on 6/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, double *ftPtr, double *inPtr) {
    // This function assumes meters is non-negative
    // Convert number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281; // eg 2.4536
    
    // How many complete feet as an unsigned int?
    
//    unsigned int feet = (unsigned int)floor(rawFeet);
    
    // Store the number of feet at the supplied address
//    printf("Storing %u to the address %p\n", feet, ftPtr);
//    *ftPtr = feet;
    
    // Calculate inches
    
    double fractionalFoot = modf(rawFeet, ftPtr);
    
//    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    // Store number of inchees at the applied address
    printf("Storing %.2f to the address %p\n", inches, inPtr);
    *inPtr = inches;
}

int main(int argc, const char * argv[])
{
    double meters = 3.0;
    double feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %.0f feet and %.1f inches.\n", meters, feet, inches);
    
    return 0;
}

