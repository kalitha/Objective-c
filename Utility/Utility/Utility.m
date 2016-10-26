//
//  utility.m
//  Utility
//
//  Created by Kalitha H N  on 24/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
// purpose:Create Utility Class having following methods
//binarySearch method for integer,binarySearch method for String,insertionSort method for integer,insertionSort method for String,bubbleSort method for integer,bubbleSort method for String


#import "Utility.h"

@implementation Utility
//bubble sort for integers
-(void)sorting:(NSMutableArray *)array value:(int)n{
    NSDate *methodStart = [NSDate date];
    
    id temp;
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
    for (int i=0; i<n; i++) {
        NSLog(@"%@",[array objectAtIndex:i]);
    }
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of bubble sort = %f", executionTime);

}

//binary search for integers
-(void)binarySearch:(NSArray *)array numberToEnter:(NSNumber *)key{
     NSDate *methodStart = [NSDate date];
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
        NSLog(@"Sliced array is %@", slicedArray);
        [self binarySearch:slicedArray numberToEnter:key];
        
        //If key is greater than the middleIndexValue then sliceUpArray and recursively call method again
    } else if (key > midIndexValue) {
        NSArray *slicedArray = [array subarrayWithRange:NSMakeRange(midIndex+1, (array.count-1)/2)];
        NSLog(@"Sliced array is %@", slicedArray);
        [self binarySearch:slicedArray numberToEnter:key];
        
    } else {
        //Else number was found
        NSLog(@"Number found");
    }
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of bubble sort = %f", executionTime);

    
}

//insertion sort for integers
-(void)insertionSorting:(NSMutableArray *)array value:(int)n
{
    NSDate *methodStart = [NSDate date];
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

//bubble sort for strings
-(void)stringSorting:(NSMutableArray *)array value:(int)n{
     NSDate *methodStart = [NSDate date];
    id temp;
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
    NSLog(@"elements n string array are");
    for (int i=0; i<n; i++) {
        NSLog(@"%@",[array objectAtIndex:i]);
    }
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of binary search = %f", executionTime);
}

//binary search for strings
-(void)stringBinarySearch:(NSMutableArray *)allLinedStrings1 stringToEnter:(id)s1{
    NSDate *methodStart = [NSDate date];
    long  minIndex = 0;
     long  maxIndex = allLinedStrings1.count-1;
    long midIndex = allLinedStrings1.count/2;
    
    
    NSString *minIndexValue = allLinedStrings1[minIndex];
    NSString *midIndexValue = allLinedStrings1[midIndex];
    NSString *maxIndexValue = allLinedStrings1[maxIndex];
    
    //Check to make sure array is within bounds
//    if (s1 > maxIndexValue || s1 < minIndexValue) {
//        NSLog(@"Key is not within Range");
//        return;
//    }
    
    NSLog(@"Mid indexValue is %@", midIndexValue);
    
    //If key is less than the middleIndexValue then sliceUpArray and recursively call method again
    if (s1 < midIndexValue){
        NSArray *slicedArray = [allLinedStrings1 subarrayWithRange:NSMakeRange(minIndex, allLinedStrings1.count/2)];
        NSLog(@"Sliced array is %@", slicedArray);
        [self stringBinarySearch:slicedArray stringToEnter:s1];
        
        //If key is greater than the middleIndexValue then sliceUpArray and recursively call method again
    } else if (s1 > midIndexValue) {
        NSArray *slicedArray = [allLinedStrings1 subarrayWithRange:NSMakeRange(midIndex+1, (allLinedStrings1.count-1)/2)];
        NSLog(@"Sliced array is %@", slicedArray);
        [self stringBinarySearch:slicedArray stringToEnter:s1];
        
    } else {
        //Else number was found
        NSLog(@"Number found");
    }
    
    
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of bubble sort = %f", executionTime);
}

//insertion sort for strings
-(void)stringInsertionSorting:(NSMutableArray *)allLinedStrings1 value:(int)n
{
     NSDate *methodStart = [NSDate date];
    NSUInteger i, j;
    for (i = 1; i < n; ++i)
    {
        NSNumber *current = allLinedStrings1[i];
        for (j = i; j > 0 && allLinedStrings1[j-1] > allLinedStrings1[i]; j--)
            allLinedStrings1[j] = allLinedStrings1[j-1];
        
        allLinedStrings1[j] = current;
    }
    NSLog(@"array elements are");
    for(int i=0;i<n;i++){
        
        NSLog(@"%@",[allLinedStrings1 objectAtIndex:i]);
        
    }
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"executionTime of insertion sorting = %f", executionTime);
    
}

    @end

