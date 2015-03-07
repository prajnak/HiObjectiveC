//
//  CarUtilities.m
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-06.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarUtilities.h"

// Private function declaration
static id getRandomItemFromArray(NSArray *anArray);

//Public Function implementations
NSString *CUGetRandomMake(NSArray *makes) {
    return getRandomItemFromArray(makes);
}

NSString *CUGetRandomModel(NSArray *models) {
    return getRandomItemFromArray(models);
}

NSString *CUGetRandomMakeAndModel(NSDictionary *makesAndModels) {
    NSArray *makes = [makesAndModels allKeys];
    NSString *randomMake = CUGetRandomMake(makes);
    NSArray *models = makesAndModels[randomMake];
    NSString *randomModel = CUGetRandomModel(models);
    
    return [randomMake stringByAppendingFormat:@" %@", randomModel];
}

static id getRandomItemFromArray(NSArray *array) {
    int max = (int)[array count];
    int randomIndex = arc4random_uniform(max);
    return array[randomIndex];
}



