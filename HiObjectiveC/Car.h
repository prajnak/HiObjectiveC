//
//  Car.h
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-06.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interfaces are declared in the format "ObjectName : ParentObject"
@interface Car : NSObject {
    
}

// The @property directive declares a public property and (copy) describes
// its memory management model. in this case, the value assigned to model will be
// stored as a copy instead of a direct pointer
@property (copy) NSString *model;

// This line declares a method drive that takes no parameters and returns a void type.
// the minus sign prepended means this is an instance method and not a class method
- (void) drive;

@end
