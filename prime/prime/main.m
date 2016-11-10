//
//  main.m
//  prime
//
//  Created by Kalitha H N on 12/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:to find prime factors

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        int i;
        int n;
        int j;
        NSLog(@"enter n");
        scanf("%d",&n);
        for (i=2; i<=n; i++) {
            //checking whether its a factor
            if(n%i==0) {
                //checking whether it is prime
                for (j=2; j<=i/2;j++) {
                    if (i%j==0)
                        break;
                    j++;
                }
                if(j>i/2)
                    NSLog(@"prime factors are %d",i);
                
            }
            }
        }

    return 0;
}
