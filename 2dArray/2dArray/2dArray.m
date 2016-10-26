//
//  2dArray.m
//  2dArray
//
//  Created by Kalitha H N on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//  Purpose: A library for reading in 2D arrays of integers, doubles, or booleans from standard input and printing them out to standard output

#import "2dArray.h"

@implementation _dArray

-(void)print2DArray:(NSMutableArray *)array
{
    NSMutableArray *arr = [[NSMutableArray alloc]initWithCapacity:[array count]];
    for (int i=0; i<[array count]; i++)
    {
        NSMutableArray *print = [array objectAtIndex:i];
        NSMutableString *data = (NSMutableString*)[print componentsJoinedByString:@" "];
        [arr insertObject:data atIndex:i ];
            }
    NSMutableString *da = (NSMutableString*)[arr componentsJoinedByString:@"\n"];
    NSLog(@"\n%@",da);
}


@end
