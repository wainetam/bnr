//
//  main.c
//  Triangle
//
//  Created by Waine Tam on 6/9/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

float remainingAngle(angle1, angle2) {
    float remainingAngle = 180.0 - angle1 - angle2;
    return remainingAngle;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

