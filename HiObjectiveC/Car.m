//
//  Car.m
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-06.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

//Always import the corresponding interface first.
#import "Car.h"

static NSString *_defaultModel;

// implementation is similar to the interface directive
// don't need to use the super class (or parent object)
@implementation Car {
    //private instance variables can be stored in
    //the implementation
    double _odometer;
}


//synthesize directive gets XCode to automatically generate getters and
//setters for a property.By default, the getter is simply the property name (model)
// , and the setter is the capitalized name with the set prefix (setModel)
@synthesize model = _model; //optional


// self keyword refers to the instance calling this method.
// its like "this" in C++ and Java
// THIS IS AN INSTANCE METHOD.
- (void) drive {
    NSLog(@"Driving a %@. VROOOOOM", self.model);
}

//now create a class level method implementation

+ (void)setDefaultModel: (NSString *)aModel {
    //don't assign parameter directly. so use the copy instance method
    //to assign a copy of aModel to _defaultModel
    _defaultModel = [aModel copy];
}

// INSTANCE INITIALIZATION
// initialization methods always return a reference to themselves.
// if not initialized, return nil. we directly assigned values to the _model and
// _odometer instance variables in initWithModel:. Remember that this is one of the
// only places you should do this—in the rest of your methods you should be using
// self.model and self.odometer.

-(id)initWithModel:(NSString *)aModel {
    self = [super init];
    if(self) {
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
}

-(id)init {
    //forward to the initWithModel method
    return [self initWithModel:_defaultModel];
}

// CLASS INITIALIZATION
// this is the class-level equivalent of init. sets up the class before
// anyone uses it. This method is called for every class before its used.
// Any subclasses will also call this method along with their own initialize
// method. so its important to add a check to ensure the initliaze method
// wasn't called by a subclass. "self" here refers to the class itself, not
// an instance.
+(void)initialize {
    if (self == [Car class]) {
        _defaultModel = @"Nissan MX";
    }
}

@end
