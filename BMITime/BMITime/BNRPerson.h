//
//  BNRPerson.h
//  BMITime
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
//{

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//    float _heightInMeters;
//    int _weightInKilos;
//}

// BNRPerson has methods to read and set its instance variables

// getter methods
//- (float)heightInMeters;
//- (int)weightInKilos;

// setter methods
//- (void)setHeightInMeters:(float)h;
//- (void)setWeightInKilos:(int)w;

// BNRPerson has a method that calcs BMI
- (float)bodyMassIndex;

@end
