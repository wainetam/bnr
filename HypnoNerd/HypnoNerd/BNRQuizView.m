//
//  BNRQuizView.m
//  HypnoNerd
//
//  Created by Waine Tam on 1/11/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizView.h"

@implementation BNRQuizView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        // set background
        self.backgroundColor = [UIColor yellowColor];
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 400, 40)];
    [label setText:@"Label from QuizView.init"];
    [self addSubview:label];
    
    return self;
}

@end
