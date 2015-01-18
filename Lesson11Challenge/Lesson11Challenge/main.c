//
//  main.c
//  Lesson11Challenge
//
//  Created by Waine Tam on 6/10/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <time.h>

//struct tm {
//    int tm_sec; // seconds after the minute [0-60]
//    int tm_min; // minutes after the hr [0-59]
//    int tm_hour; // hrs since midnight [0-23]
//    int tm_mday; // days of the month [1-31]
//    int tm_mon; // months since Jan [0-11]
//    int tm_year; // years since 1900
//    int tm_wday;  // days since Sunday [0-6]
//    int tm_yday; // days since Jan 1 [0-365]
//    int tm_isdst; // daylight savings time flag
//    long tm_gmtoff; // offset from CUT in seconds
//    char *tm_zone; // timezone abbreviation
//};

int main(int argc, const char * argv[]) {
    long fourMillSecs = 4000000;
    struct tm fourMill;
    localtime_r(&fourMillSecs, &fourMill);
    printf("The date is %d-%d-%d\n", fourMill.tm_mon+1, fourMill.tm_mday, fourMill.tm_year);
    return 0;
}

