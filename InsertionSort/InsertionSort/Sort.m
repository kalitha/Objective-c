//
//  Sort.m
//  InsertionSort
//
//  Created by BridgeLabz Solution LLP on 17/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Sort.h"

@implementation Sort

-(void)sorting:(NSMutableArray *)array value:(int)n;
{
    
    NSUInteger i, j;
    for (i = 1; i < n; ++i)
    {
        NSNumber *current = array[i];
        for (j = i; j > 0 && [array[j-1] unsignedIntegerValue] > [current unsignedIntegerValue]; j--)
            array[j] = array[j-1];
        
        array[j] = current;
    }
    NSLog(@"array elements are");
    for(int i=0;i<n;i++){
        
        NSLog(@"%@",[array objectAtIndex:i]);
        
    }

}
@end
