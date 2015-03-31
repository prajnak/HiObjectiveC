//
//  main.m
//  ScreenRecorder
//
//  Created by Prajna Kandarpa on 2015-03-07.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScreenRecorder.h"

/*
 
To perform a real-time screen capture and save it to a Quicktime movie file, you need 
minimally three AV objects: 
 
An AVCaptureSession object, which coordinates the flow of
data from AV input sources to outputs.

An AVCaptureScreenInput object, which is the input data source that provides video
data from the given display.

An AVCaptureMovieFileOutput object, which is the output destination for you to write
captured media data to a QuickTime movie file.
 
*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScreenRecorder *sc = [[ScreenRecorder alloc] init];
        NSURL *path = [NSURL URLWithString:@"file:///Users/pulsar/github/ee/b.mov/"];
        [sc screenRecording: path];
    }
//    return 0;
}
