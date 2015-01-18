//
//  BNREmployee.h
//  BMITime
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
//{
//    NSMutableArray *_assets;
//}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
//@property (nonatomic) unsigned int officeAlarmCode; moved to class extension
//@property (nonatomic, copy) NSArray *assets;
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
