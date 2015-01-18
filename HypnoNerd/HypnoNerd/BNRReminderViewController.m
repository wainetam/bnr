//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Waine Tam on 1/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

- (void)viewDidLoad { // runs once during run of the app
    [super viewDidLoad];
    
    NSLog(@"BNRReminderViewController loaded its view.");

}

- (void)viewWillAppear:(BOOL)animated { // will run every time the view appears, not just once after view is loaded
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

- (IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil {
    // to preserve the benefits of lazy loading, don't access the view property of a view controller in the controller init function
    
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    
    if(self) {
        // set the tab bar item's title
        self.tabBarItem.title = @"Reminder";
        
        // create a UIImage from a file
        // this will use Time@2x.png on retina display devices
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        // put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    
    return self;
}

@end
