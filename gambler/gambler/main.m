//
//  main.m
//  gambler
//
//  Created by Kalitha H N on 12/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose: Print Number of Wins and Percentage of Win and Loss in gambler game

#import <Foundation/Foundation.h>
#import "Gamble.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Gamble *gamble = [[Gamble alloc]init];
        
        int stake,goal,trials;
        //Taking user input
        NSLog(@"Enter the stake");
        scanf("%d",&stake);
        NSLog(@"Enter the goal");
        scanf("%d",&goal);
        NSLog(@"Enter the trial");
        scanf("%d",&trials);
        
        [gamble gambleItwithStake:stake andGoal:goal andTrials:trials];
        
              
        
        
    }
    return 0;
}
