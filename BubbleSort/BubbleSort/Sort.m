//
//  Sort.m
//  BubbleSort
//
//  Created by Kalitha H N on 17/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.


#import "Sort.h"

@implementation Sort

id temp;

-(void)sorting:(NSMutableArray *)array value:(int)n
{
    for(int i=0;i<n;i++){
        for(int j=0;j<n-1;j++){
            if([[array objectAtIndex:(j)] compare:[array objectAtIndex:j+1]]==NSOrderedDescending)
            {
              temp=[array objectAtIndex:(j+1)];
                [array replaceObjectAtIndex:(j+1) withObject:[array objectAtIndex:(j)]];
                [array replaceObjectAtIndex:(j) withObject:temp];
                
            }
            
        }
        
    }
    
    
    NSLog(@"array elements are");
    for(int i=0;i<n;i++){
        
        NSLog(@"%@",[array objectAtIndex:i]);
        
    }

}
@end
