//
//  main.m
//  FindNum
//
//  Created by Kalitha H.N on 21/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindNum.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    int steps;
        //accept the input from user
    NSLog(@"Enter the number of steps you want");
        scanf("%d",&steps);
        FindNum *findNumber=[[FindNum alloc]init];
        [findNumber findNum:steps];
    }
    return 0;
}
