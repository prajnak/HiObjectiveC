//
//  main.m
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-06.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        double odometer = 10.56;
        int odoAsInteger = (int)odometer;
        NSLog(@"You've driven %.2f miles", odometer);
        NSLog(@"You've driven %d miles", odoAsInteger);
        NSLog(@"Hello, World!");
    }
    return 0;
}
