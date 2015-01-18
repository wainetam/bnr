//
//  main.c
//  PBR
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
//    double *integerPart_ptr = &integerPart;
    double fractionPart;
    
//    fractionPart = modf(pi, integerPart_ptr);
    fractionPart = modf(pi, &integerPart);
    
//    printf("integerPart = %.0f, fractionPart = %.2f\n", *integerPart_ptr, fractionPart);
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    return 0;
    
}
