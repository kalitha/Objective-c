//
//  main.m
//  ToFindTripplets
//
//  Created by Kalitha H N on 21/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
// Purpose of the program:Read in N integers and counts the   number of triples that sum to exactly 0.

#import <Foundation/Foundation.h>
#import "Tripplets.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Tripplets *triple = [[Tripplets alloc]init];
        int num;
        //accept no. of integer
        NSLog(@"Enter the no. of integer to be inserted");
        scanf("%d",&num);
        
        NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:num];
        
        for (int i=0; i<num; i++)
        {
            int num1;
            NSLog(@"Enter the %d element",i+1);
            scanf("%d",&num1);
            NSLog(@"%d",num1);
            id newNum = [NSNumber numberWithInt:num1];
            [array insertObject:newNum atIndex:i];
        }
        
        [triple findTriplet:array];
        
    }
    return 0;
}
