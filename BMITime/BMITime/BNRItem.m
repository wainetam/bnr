//
//  BNRItem.m
//  BMITime
//
//  Created by Waine Tam on 12/14/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)s {
    // call the superclass's designated initializer
    self = [super init];
    
    // did the superclass's designated initializer succeed?
    if(self) {
        // give the instance variables initial values
        _itemName = name;
        _serialNumber = s;
        _valueInDollars = value;
        // set _dateCreated to the current date and time
        _dateCreated = [NSDate date];
    }
    
    // return the address of the newly initialized object
    return self;
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init {
    return [self initWithItemName:@"Item"];
}

- (void)setItemName:(NSString *)str {
    _itemName = str;
}

- (NSString *)itemName {
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str {
    _serialNumber = str;
}

- (NSString *)serialNumber {
    return _serialNumber;
}

- (void)setValueInDollars:(int)v {
    _valueInDollars = v;
}

- (int)valueInDollars {
    return _valueInDollars;
}

- (void)setDateCreated:(NSDate *)d {
    _dateCreated = d;
}

- (NSDate *)dateCreated {
    return _dateCreated;
}

- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@(%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    return descriptionString;
}

@end
