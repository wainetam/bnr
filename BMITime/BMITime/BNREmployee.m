//
//  BNREmployee.m
//  BMITime
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// a class extension -- use () instead of colon and super class
@interface BNREmployee ()
{
//    NSMutableArray *_assets;
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
    // is assets nil?
    if(!_assets) {
        // create array
//        _assets = [[NSMutableArray alloc] init];
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets {
    // sum up resale value of assets
    unsigned int sum = 0;
    for(BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    
    return sum;
}

- (double)yearsOfEmployment {
    if(self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secondsBetween = [now timeIntervalSinceDate:self.hireDate];
        return secondsBetween;
    } else {
        return 0;
    }
}
    
- (float)bodyMassIndex {
//    return 19.0;
    float normalBMI = [super bodyMassIndex]; // run a method by the name bodyMassIndex but start at superclass of BNREmployee
    return 0.9 * normalBMI;
}

- (NSString *) description {
//    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
