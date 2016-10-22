//
//  main.m
//  VendingMachine
//
//  Created by Kalitha H.N on 21/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
// Purpose of the program:To calculate the minimum number of Notes as well as the Notes to be returned by the Vending Machine as a Change

#import <Foundation/Foundation.h>
#import "VendingMachine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int rupees;
        VendingMachine *vendingMachine=[[VendingMachine alloc]init];
        NSLog(@"enter the amount");//accept 
        scanf("%d",&rupees);
        int k =[vendingMachine notes:rupees];
        NSLog(@"Minimum notes Required :---%d",k);
    }
    return 0;
}
