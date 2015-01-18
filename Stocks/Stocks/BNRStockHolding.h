//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;
@property NSString *symbol;

//{
//    float _purchaseSharePrice;
//    float _currentSharePrice;
//    int _numberOfShares;
//}
//
//- (float)purchaseSharePrice;
//- (float)currentSharePrice;
//- (int)numberOfShares;
//
//- (void)setPurchaseSharePrice:(float)purchasePrice;
//- (void)setCurrentSharePrice:(float)currentPrice;
//- (void)setNumberOfShares:(int)number;

- (float)costInDollars;
- (float)valueInDollars;

@end
