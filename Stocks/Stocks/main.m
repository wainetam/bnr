//
//  main.m
//  Stocks
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSMutableArray *portfolio = [NSMutableArray array];
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
        BNRStockHolding *aapl = [[BNRStockHolding alloc] init];
        BNRStockHolding *goog = [[BNRStockHolding alloc] init];
        BNRStockHolding *twtr = [[BNRStockHolding alloc] init];
        BNRForeignStockHolding *ba = [[BNRForeignStockHolding alloc] init];

        aapl.symbol = @"aapl";
        goog.symbol = @"goog";
        twtr.symbol = @"twtr";
        ba.symbol = @"ba";
        [aapl setPurchaseSharePrice:90];
        [aapl setCurrentSharePrice:90];
        [aapl setNumberOfShares:115];
        [goog setPurchaseSharePrice:700];
        [goog setCurrentSharePrice:700];
        [goog setNumberOfShares:900];
        [twtr setPurchaseSharePrice:30];
        [twtr setCurrentSharePrice:31];
        [twtr setNumberOfShares:100];
        ba.conversionRate = 1.5;
        ba.purchaseSharePrice = 10; // GBP
        ba.currentSharePrice = 15;
        ba.numberOfShares = 100;
//        [ba setPurchaseSharePrice:10]; // in GBP
//        [ba setCurrentSharePrice:15];
//        [ba setNumberOfShares:100];

        
//        [portfolio addObject:aapl];
//        [portfolio addObject:goog];
//        [portfolio addObject:twtr];
//        [portfolio addObject:ba];

        [portfolio addHolding:aapl];
        [portfolio addHolding:goog];
        [portfolio addHolding:twtr];
        [portfolio addHolding:ba];
        
        for(int i = 0; i < [portfolio.getHoldings count]; i++) {
            NSLog(@"value of position: %f", [portfolio.getHoldings[i] valueInDollars]);
        }
        
        [portfolio removeHolding:@"goog"];
        NSLog(@"num of stocks in portfolio: %d", (int)[portfolio.getHoldings count]);
        NSLog(@"value of portfolio: %f", [portfolio totalValue]);
    }
    return 0;
}
