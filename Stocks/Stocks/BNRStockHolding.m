//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

//-(float)purchaseSharePrice {
//    return _purchaseSharePrice;
//}
//
//-(float)currentSharePrice {
//    return _currentSharePrice;
//}
//
//-(int)numberOfShares {
//    return _numberOfShares;
//}
//
//-(void)setPurchaseSharePrice:(float)purchasePrice {
//    _purchaseSharePrice = purchasePrice;
//}
//
//-(void)setCurrentSharePrice:(float)currentPrice {
//    _currentSharePrice = currentPrice;
//}
//
//-(void)setNumberOfShares:(int)number {
//    _numberOfShares = number;
//}

-(float)valueInDollars {
    float currentPrice = [self currentSharePrice];
    float shareCount = [self numberOfShares];
    
    return currentPrice * shareCount;
}

-(float)costInDollars {
    float purchasePrice = [self purchaseSharePrice];
    float shareCount = [self numberOfShares];
    
    return purchasePrice * shareCount;
}

@end
