//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Waine Tam on 12/8/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRPortfolio : NSObject
//{
//    NSMutableArray *_holdings;
//}

- (float)totalValue;
- (void)addHolding:(BNRStockHolding *)s;
- (void)removeHolding:(NSString *)ticker;
- (NSArray *)getHoldings;

@end
