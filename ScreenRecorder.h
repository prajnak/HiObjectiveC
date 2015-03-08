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
<AVCaptureFileOutputRecordingDelegate> {
@private
    AVCaptureSession *mSession;
    AVCaptureMovieFileOutput *mMovFileOutput;
    NSTimer *mTimer;
}

-(void)screenRecording:(NSURL *)destPath;

@end