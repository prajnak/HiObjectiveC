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
        NSLog(@"6 + 2 = %d",  6 + 2);    // 8
        NSLog(@"6 - 2 = %d",  6 - 2);    // 4
        NSLog(@"6 * 2 = %d",  6 * 2);    // 12
        NSLog(@"6 / 2 = %d",  6 / 2);    // 3
        NSLog(@"6 %% 2 = %d", 6 % 2);    // 0
        int i = 0;
        NSLog(@"%d", i);    // 0
        i++;
        NSLog(@"%d", i);    // 1
        i++;
        NSLog(@"%d", i++);    // 2
        
        //conditionals
        int modelCar = 1978;
        if (modelCar < 1970) {
            NSLog(@"This car is antique");
        } else {
            NSLog(@"This car is useless");
        }
        
        //switch, comparision operators
        //switch only works with integral types
        switch (modelCar) {
            case 1980:
                NSLog(@"Your car is from 1980");
                break;
            case 1990:
                NSLog(@"Your car is from 1990");
                break;
            case 1978:
                NSLog(@"LOL you idiot");
                break;
            default:
                NSLog(@"I have no idea when you car was made");
                break;
        }
        
        //Loops
        
    }
    return 0;
}
