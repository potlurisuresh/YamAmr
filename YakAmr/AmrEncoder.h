//
//  AmrEncoder.h
//  YakAmr
//
//  Created by Suresh Potluri on 8/6/13.
//  Copyright (c) 2013 yaksee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "interf_enc.h"

@interface AmrEncoder : NSObject
- (void) AmrEncoderInit;
- (void) AmrEncoderExit;
- (int) AmrEncoderEncode: (const short *) inData OutData:(unsigned char*) outData;
@end
