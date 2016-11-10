//
//  CouponNumbers.m
//  CouponNumbers
//
//  Created by Kalitha HN on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "CouponNumbers.h"

@implementation CouponNumbers
+(void)getCouponNumber
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:10];
    int j;
    int i;
    for (i=0; i<=9; i++)
    {
        NSNumber *num = [NSNumber numberWithInt:arc4random_uniform(10)];
        
        if (i==0)
        {
            [array addObject:num];
        }
        else
        {
            int k=0;
            for (j=0; j<[array count]; j++)
            {
                NSNumber *val = [array objectAtIndex:j];
                if (val==num)
                {
                    k+=1;
                }
            }
            
            if (k==0)
            {
                [array addObject:num];
            }
        }
    }
    
    for (int k=0; k<[array count]; k++)
    {
        id num = [array objectAtIndex:k];
        NSLog(@"The Distinct Coupon Numbers are: %@",num);
    }
}
@end
