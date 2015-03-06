//
//  main.m
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-06.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

#import <Foundation/Foundation.h>

// MACROS
// Low level way to define symbolic constants and
// space saving abbreviations. #define directive maps
// a macro name to an expansion, which can be an arbitrary
// sequence of characters

#define PI 3.14159
#define RAD_TO_DEG(radians) (radians * 180/PI)

// TYPEDEFS
// can be used to redefine existing types or add new data types.
// after definition, they can be used like any other data type.
typedef unsigned char ColorComponent;

// STRUCTS
typedef struct {
    unsigned char red;
    unsigned char green;
    unsigned char blue;
} Color;

// ENUMS
// a collection of related constants
// typedef enumerated types with a
// descriptive name for convenience like structs

typedef enum {
    FORD,
    HONDA,
    CHEVROLET,
    HYUNDAI,
    MARUTI,
    SUZUKI,
    TOYOTA
} CarModel;

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
//        int model = 1980;
//        int ey = 0;
//        while (ey<5) {
//            if (ey == 3) {
//                NSLog(@"Exiting loop");
//                break;
//            }
//            NSLog(@"Current year is %d", model+ey);
//            ey++;
//            
//        }
//        for (int i =0; i <= 10000 ; i++) {
//            NSLog(@"%d modulo 2 is %d", i, i%2);
//            if (i==999) {
//                break;
//            }
//        }
        
        //For-in loops are called fast enumaerators.
        //more efficient way to iterate over Objective-C
        //collections like NSSet and NSArray
        NSArray *models = @[@"Ford", @"Honda", @"Acura", @"Toyota"];
        for (id model in models) {
            NSLog(@"%@", model);
        }
        
        // types defined using typedef
        
        ColorComponent red = 255;
        ColorComponent blue = 160;
        ColorComponent green = 0;
        NSLog(@"Your paint job is R:%hhu, G:%hhu, B:%hhu", red, blue, green);
        
        //To populate the new carColor structure, we used the {255, 160, 0}
        //initializer syntax. This assigns values in the same order as they
        // were declared in the struct.
        Color carColor = {255,160,0};
        NSLog(@"Your paint job is (R:%d, G:%d, B:%d)", carColor.red, carColor.green, carColor.blue);
        
        // myCar was decalred with the enumerated type CarModel, thus it can only hold one of the types
        // that are a part of CarModel.
        CarModel myCar = FORD;
        switch (myCar) {
            case FORD:
                NSLog(@"You like Western cars you fascist pig");
                //break;
            case HONDA:
                NSLog(@"Japan's really nice huh");
                //break;
                
            default:
                break;
        }
        
        // PRIMITIVE ARRAYS
        // obj c has access to primitive C arrays but its nicer to use the
        // NSArray and NSMutableArray classes provided by the Foundation framework
        // fall back to primitive arrays for performance intensive environments
        int years[4] = {1980, 2010, 2012, 1299};
        years[0] = 0000;
        for (int i =0; i<4; i++) {
            NSLog(@"The year right now is %d", years[i]);
        }
        
        // POINTERS
        // A direct reference to a memory address. variable is a transparent
        // container for a value while pointers lets you see how the value is
        // stored.
        // & - reference operator that returns the memory address of a variable
        // * - dereference operator returns the value stored in a memory address.
        
        int year = 1967;
        int *pointer = &year;
        *pointer = 1966;
        NSLog(@"the value of pointer is %d. The value of point is %d", *pointer, year);
        
        // The real utility of pointers lies in the fact that a pointer can be moved to
        // surrounding memory addresses. very useful for navigating arrays which are just
        // contiguous blocks of memory.
        
        char model[5] = {'h', 'o', 'n', 'd', 'a'};
        char *modPtr = &model[0];
        for (int i=0; i<5; i++) {
            NSLog(@"The value at memory address %p is %c", modPtr, *modPtr);
            modPtr++;
        }
        NSLog(@"The first letter is %c", *(modPtr-5));
        
    }
    return 0;
}
