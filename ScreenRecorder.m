//
//  ScreenRecorder.m
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-07.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

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
@implementation ScreenRecorder

-(void)screenRecording:(NSURL *)destPath {
    //Create a capture session
    mSession = [[AVCaptureSession alloc] init];
    
    //Set the session preset
    mSession.sessionPreset = AVCaptureSessionPresetMedium;
    
    //Specify the main display
    CGDirectDisplayID dispId = kCGDirectMainDisplay;
    
    //create a screen input with dispId and add it to session
    AVCaptureScreenInput *input = [[AVCaptureScreenInput alloc] initWithDisplayID:dispId];
    if(!input) {
        mSession = nil;
        return;
    }
    if([mSession canAddInput:input])
        [mSession addInput:input];
    
    //Now create a MovieFileOutput and also add it to the session
    mMovFileOutput = [[AVCaptureMovieFileOutput alloc] init];
    
    if([mSession canAddOutput:mMovFileOutput])
        [mSession addOutput:mMovFileOutput];
    
    //Start running the session
    [mSession startRunning];
    
    //Delete the file if it already exists
    if ([[NSFileManager defaultManager] fileExistsAtPath:[destPath path]])
    {
        NSError *err;
        if (![[NSFileManager defaultManager] removeItemAtPath:[destPath path] error:&err])
        {
            NSLog(@"Error deleting existing movie %@", [err localizedDescription]);
    
        }
    }
    
    //Start recording to the movie file. assume that destPath ends in ".mov"
    //recording delegate is set to self
    [mMovFileOutput startRecordingToOutputFileURL:destPath recordingDelegate:self];
    
    //timers
    mTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:NO];
}
-(void)timerFireMethod:(NSTimer *)timer
{
    // Stop recording to the destination movie file
    [mMovFileOutput stopRecording];
    
    mTimer = nil;
}

// AVCaptureFileOutputRecordingDelegate methods

- (void)captureOutput:(AVCaptureFileOutput *)captureOutput didFinishRecordingToOutputFileAtURL:(NSURL *)outputFileURL fromConnections:(NSArray *)connections error:(NSError *)error
{
    NSLog(@"Did finish recording to %@ due to error %@", [outputFileURL description], [error description]);
    
    // Stop running the session
    [mSession stopRunning];
    
    // Release the session
    mSession = nil;
}

@end
