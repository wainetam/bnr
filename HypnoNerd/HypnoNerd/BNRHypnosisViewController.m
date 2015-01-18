//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Waine Tam on 1/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

//- (void)setView:(BNRHypnosisView *)view {
//    _view = view;
//}

- (void)viewDidLoad { // when a view controller finishes loading its view, it's sent the message 'viewDidLoad'
    // always call the super implementation of viewDidLoad (when overriding for inheritance reasons)
    [super viewDidLoad];
    
    NSLog(@"BNRHypnosisViewController loaded its view.");
}

- (void)loadView {
    // create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    //set it as *the* view of this view controller
    self.view = backgroundView;
    
    [backgroundView.colorControl addTarget:self
                                    action:@selector(tapColor:)
                          forControlEvents:UIControlEventValueChanged];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil {
    
    // to preserve the benefits of lazy loading, don't access the view property of a view controller in the controller init function
    
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];

    if(self) {
        // set the tab  bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        // create a UIImage from a file
        // this will use Hypno@2x.png on retina display devices
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        // put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    
    return self;
}

- (void)tapColor:(UISegmentedControl *)sender { // action for UIControl
    if(sender.selectedSegmentIndex == 0) { // red
        NSLog(@"red!");
        self.view.backgroundColor = [UIColor redColor]; // how to set self.view.circleColor this??
//        self.view.circleColor = [UIColor redColor];
    } else if (sender.selectedSegmentIndex == 1) { // green
        NSLog(@"green!");
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        NSLog(@"blue!");
        self.view.backgroundColor = [UIColor blueColor];
    }
}

@end
