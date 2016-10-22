//
//  main.m
//  HarmonicNumber
//
//  Created by Kalitha H N on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
// Purpose Of the program: Prints the Nth harmonic number

#import <Foundation/Foundation.h>
#import "HarmonicNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                HarmonicNumber *harNum = [[HarmonicNumber alloc]init];
                int num;
                
                NSLog(@"Enter the Harmonic value");
                scanf("%d",&num);
                
                if (num==0)
                {
                    while (num==0)
                    {
                        NSLog(@"Please Enter the value greater than 0");
                        scanf("%d",&num);
                    }
                }
                
                [harNum getHarmonicNumber:num];
    }
    return 0;
}
