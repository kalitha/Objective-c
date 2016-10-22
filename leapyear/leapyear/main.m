//
//  main.m
//  leapyear
//
//  Created by Kalitha H N on 10/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:To find the leap year

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year;
        //int i=0;
       
        int count=0;
        NSLog(@"Enter the year");
        scanf("%d",&year);
         int t=year;
        while (t>0)
        {
            t= t/10;
            count++;
            
        }
        if (count==4) {
    
            if ((year%4)==0) {
               
            NSLog(@"This is a leap year");
            }
        else
            NSLog(@"Not a leap year");
        }
        
        else
            NSLog(@"enter 4 digit year");
       
    }
    return 0;
}
