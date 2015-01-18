//
//  BNRAsset.m
//  Stocks
//
//  Created by Waine Tam on 12/7/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description {
//    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    // is holder non-nil?
    if(self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
