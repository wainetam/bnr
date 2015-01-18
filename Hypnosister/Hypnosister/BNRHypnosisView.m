//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Waine Tam on 12/14/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisView.h"

// start class extension
@interface BNRHypnosisView ()

@property (strong, nonatomic) UIColor *circleColor;

@end
// end class extension

@implementation BNRHypnosisView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    
    // figure out the center of the bounds rectangle
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // circle will be the largest that will fit in the view
//    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -=20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    // configure line width to 10 points
    path.lineWidth = 10;
    
    // add an arc to the path at center, with the radius of radius, from 0 to 2*PI radians (a circle)
//    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    
    // configure the drawing color to light gray
//    [[UIColor lightGrayColor] setStroke];
    [self.circleColor setStroke];
    
    // draw the line
    [path stroke];
    
    UIImage *logoImage = [UIImage imageNamed:@"porter+sail-avatar-teal.png"];
    
    CGPoint topleft;
    
    topleft.x = 0;
    topleft.y = 0;
//    [logoImage drawAtPoint:topleft];
    
    CGRect customRect = CGRectMake(0.0, 0.0, 100, 100);
    [logoImage drawInRect: customRect];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        // all BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

// when a finger touches the screen
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ was touched", self);
    
    // get 3 random numbers between 0 and 1
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() %100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}

- (void)setCircleColor:(UIColor *)circleColor {
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

@end
