//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)valueInDollars {
    float currentPrice = [self currentSharePrice];
    float shareCount = [self numberOfShares];
    
    return currentPrice * shareCount * self.conversionRate;
}

-(float)costInDollars {
    float purchasePrice = [self purchaseSharePrice];
    float shareCount = [self numberOfShares];
    
    return purchasePrice * shareCount * self.conversionRate;
}

@end
