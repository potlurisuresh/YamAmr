//
//  AudioPCMCapture.mm
//  YakAmr
//
//  Created by Suresh Potluri on 8/6/13.
//  Copyright (c) 2013 yaksee. All rights reserved.
//

#import "AudioPCMCapture.h"
#import "AmrEncoder.h"

@interface AudioPCMCapture () {

    AVAudioSession *avSession;
    AVAudioRecorder *avRecorder;
}

@end

@implementation AudioPCMCapture

-(void) AudioPCMCaptureInit
{
    avSession = [AVAudioSession sharedInstance];
}

@end
