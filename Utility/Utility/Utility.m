//
//  utility.m
//  Utility
//
//  Created by BridgeLabz on 24/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "Utility.h"

@implementation Utility

-(void)sorting:(NSMutableArray *)array value:(int)n
{
    NSDate *methodStart=[NSDate date];
    for(int i=0;i<n;i++){
        for(int j=0;j<n-1;j++){
            if([[array objectAtIndex:(j)] compare:[array objectAtIndex:j+1]]==NSOrderedDescending)
            {
              id temp=[array objectAtIndex:(j+1)];
                [array replaceObjectAtIndex:(j+1) withObject:[array objectAtIndex:(j)]];
                [array replaceObjectAtIndex:(j) withObject:temp];
                
            }
            
        }
        
    }
    NSLog(@"array elements are");
    for(int i=0;i<n;i++){
        
        NSLog(@"%@",[array objectAtIndex:i]);
        
    }
    NSDate *methodFinish=[NSDate date];
    NSTimeInterval executionTime=[methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of bubble sort=%f",executionTime);
}

-(void)binarySearch:(NSArray *)array numberToEnter:(NSNumber *)key{
    NSDate *methodStart=[NSDate date];
    
    NSUInteger  minIndex = 0;
    NSUInteger  maxIndex = array.count-1;
    NSUInteger  midIndex = array.count/2;
    
    
    NSNumber *minIndexValue = array[minIndex];
    NSNumber *midIndexValue = array[midIndex];
    NSNumber *maxIndexValue = array[maxIndex];
    
    //Check to make sure array is within bounds
    if (key > maxIndexValue || key < minIndexValue) {
        NSLog(@"Key is not within Range");
        return;
    }
    
    NSLog(@"Mid indexValue is %@", midIndexValue);
    
    //If key is less than the middleIndexValue then sliceUpArray and recursively call method again
    if (key < midIndexValue){
        NSArray *slicedArray = [array subarrayWithRange:NSMakeRange(minIndex, array.count/2)];
        //NSLog(@"Sliced array is %@", slicedArray);
        [self binarySearch:slicedArray numberToEnter:key];
        
        //If key is greater than the middleIndexValue then sliceUpArray and recursively call method again
    } else if (key > midIndexValue) {
        NSArray *slicedArray = [array subarrayWithRange:NSMakeRange(midIndex+1, array.count/2)];
       // NSLog(@"Sliced array is %@", slicedArray);
        [self binarySearch:slicedArray numberToEnter:key];
        
    } else {
        //Else number was found
        NSLog(@"Number found");
    }
    NSDate *methodFinish=[NSDate date];
    NSTimeInterval executionTime=[methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of binary search=%f",executionTime);

    
}

-(void)insertionSorting:(NSMutableArray *)array value:(int)n
{
    NSDate *methodStart=[NSDate date];
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
    NSDate *methodFinish=[NSDate date];
    NSTimeInterval executionTime=[methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of insertion sort=%f",executionTime);
    
}




@end
