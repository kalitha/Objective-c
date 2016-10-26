//
//  main.m
//  Stopwatch
//
//  Created by Kalitha HN on 24/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//  Purpose:Write a Stopwatch Program for measuring the time that elapses between the start and end clicks

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num;
        NSLog(@"Press 1 to start");
        scanf("%d",&num);
        
        NSDate *date;
        if (num == 1)
        {
            date = [NSDate date];
            NSLog(@"Timer started");
        }
        
        int num1;
        NSLog(@"Press 2 to stop");
        scanf("%d",&num1);
        if (num1 == 2)
        {
            NSTimeInterval endTime = [date timeIntervalSinceNow];
            NSLog(@"Total Time Elapsed : %f seconds",endTime*-1);
        }
    }
    return 0;
}
