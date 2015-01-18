//
//  main.c
//  Degrees
//
//  Created by Waine Tam on 12/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

static float lastTemp;

float fahrenheitFromCelsius(float cel) {
    lastTemp = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    printf("The last temp converted was %f.\n", lastTemp);
    return EXIT_SUCCESS;
}
