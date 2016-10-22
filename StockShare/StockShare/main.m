//
//  main.m
//  StockShare
//
//  Created by Kalitha H N on 14/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:To read in Stock Names, Number of Share, Share Price. Print a Stock Report with total value of each Stock and the total value of Stock.

#import <Foundation/Foundation.h>
#import "share.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        share *obj=[[share alloc]init];
        int numStocks;
        //accept the input from user
        NSLog(@"enter no. of stocks");
        scanf("%d",&numStocks);
       
        [obj entershares:numStocks];
        
        
    }
    return 0;
}
