//
//  main.m
//  BubbleSort
//
//  Created by Kalitha H N on 17/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:Read in integers print them in sorted order using Bubble Sort

#import <Foundation/Foundation.h>
#import "Sort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Sort *sortobj=[[Sort alloc]init];
        int n;
        NSLog(@"enter no. of elements");
        scanf("%d",&n);
        
        NSMutableArray *array=[[NSMutableArray alloc]initWithCapacity:n];
        
        
        for (int i=0; i<n; i++)
        {
            int num;
            NSLog(@"Enter the element %d",i+1);
            scanf("%d",&num);
            id num1 = [NSNumber numberWithInt:num];
            [array insertObject:num1 atIndex:i];
        }
        [sortobj sorting:array value:n];
      
    }
    return 0;
}
