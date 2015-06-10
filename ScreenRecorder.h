//
//  ScreenRecorder.h
//  HiObjectiveC
//
//  Created by Prajna Kandarpa on 2015-03-07.
//  Copyright (c) 2015 Prajna Kandarpa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface ScreenRecorder : NSObject
<AVCapture> {
@private
    AVCaptureSession *mSession;
    AVCaptureMovieFileOutput *mMovFileOutput;
    NSTimer *mTimer;
    
}

@property (nonatomic, readonly) AVCaptureSession *captureSession;
@property (nonatomic, readonly) AVCaptureScreenInput *videoCaptureScreen;
@property (nonatomic, readonly) AVCaptureVideoDataOutput *videoOutput;
@property (nonatomic, readonly) AVCaptureAudioDataOutput *audioOutput;

-(void)screenRecording:(NSURL *)destPath;

@end