//
//  main.m
//  Flip Coin
//
//  Created by Kalitha H N on 10/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:flip a coin and calculate Percentage of Head vs Tails

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        
        int i = 0;
        int head = 0;
        int tail = 0;
        NSLog(@"Enter number of times to flip");
        scanf("%d",&n);
        while (i<n)
        {
       double num=drand48();
            //NSLog(@"%f",num);
            if (num< 0.5)
            {
                tail=tail+1;
            }
            else
            {
                head=head+1;
            }
            i++;
        }
        
        double perc = (double)head/n*100;
        double perc1 = (double)tail/n*100;
        NSLog(@"Head: %d%c",(int)perc,'%');
        NSLog(@"Tail: %d%c",(int)perc1,'%');
        
    }
    return 0;
}
