//
//  AmrEncoder.mm
//  YakAmr
//
//  Created by Suresh Potluri on 8/6/13.
//  Copyright (c) 2013 yaksee. All rights reserved.
//

#import "AmrEncoder.h"

@interface AmrEncoder ()
- (void) AmrEncoderInit;
- (void) AmrEncoderExit;
- (int) AmrEncoderEncode: (const short *) inData OutData:(unsigned char*) outData;
@end

@implementation AmrEncoder

static void *amrHandler;

- (void) AmrEncoderInit
{
    amrHandler = Encoder_Interface_init(0);
    if (amrHandler == NULL)
    {
        NSLog(@"Amr Encoder Initializatin failed\n");
    }
}

- (void) AmrEncoderExit
{
    if (amrHandler) {
        Encoder_Interface_exit(amrHandler);
    }
}

- (int) AmrEncoderEncode: (const short *) inData OutData:(unsigned char*) outData
{
    int outDataSize=0;
    if (amrHandler) {
        outDataSize = Encoder_Interface_Encode(amrHandler, MR475, inData, outData, 0);
    }
    
    return outDataSize;
}

@end
