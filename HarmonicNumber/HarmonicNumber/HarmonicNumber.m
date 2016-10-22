//
//  HarmonicNumber.m
//  HarmonicNumber
//
//  Created by BridgeLabz on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "HarmonicNumber.h"

@implementation HarmonicNumber

-(void)getHarmonicNumber:(int)num1
{
    float sum = 0.0;
    for (int i=1;i<=num1 ;i++)
    {
        float num = (float)1/i;
        sum = sum + num;
    }
    
    NSLog(@"The Harmonic value of %d is: %f",num1,sum);
}

@end
