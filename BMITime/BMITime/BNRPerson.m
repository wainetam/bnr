//
//  BNRPerson.m
//  BMITime
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters {
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h {
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos {
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w {
//    _weightInKilos = w;
//}

- (float)bodyMassIndex {
//    return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    float w = [self weightInKilos];
    
    return w / (h * h);
}

@end
