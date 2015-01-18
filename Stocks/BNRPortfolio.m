//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Waine Tam on 12/8/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio() // class extension
{
    NSMutableArray *_holdings;
}
@end

@implementation BNRPortfolio

- (float)totalValue {
    float sum = 0;
    for(BNRStockHolding *s in _holdings) {
        sum = sum + s.currentSharePrice * s.numberOfShares;
    }
    return sum;
}

- (void)addHolding:(BNRStockHolding *)s {
    if(!_holdings) {
        _holdings = [NSMutableArray array];
    }
    
    [_holdings addObject:s];
}

- (void)removeHolding:(NSString *)ticker {
    int count = 0;
    int indexToDelete; // assume don't save same ticker twice
    if([_holdings count] == 0) {
        NSLog(@"nothing to remove");
    } else {
        for(BNRStockHolding *s in _holdings) {
            if([s.symbol isEqualToString:ticker]) {
                indexToDelete = count;
            }
            count++;
        }
        if(indexToDelete) {
            NSLog(@"no stock in portfolio matches ticker symbol");
        } else {
            [_holdings removeObjectAtIndex:indexToDelete];
        }
    }
    
}

- (NSArray *)getHoldings {
    return _holdings;
}

@end
