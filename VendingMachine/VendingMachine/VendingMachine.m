//
//  VendingMachine.m
//  VendingMachine
//
//  Created by BridgeLabz on 21/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "VendingMachine.h"

@implementation VendingMachine

-(int)notes:(int)rupees{
    if(rupees>=1000){
        int note=rupees/1000;
           rupees=rupees%1000;
        NSLog(@"thousands : %d",note);
        int k = [self notes:rupees];
        return note + k;
        }
    else if(500<=rupees && rupees<1000){
        int note=rupees/500;
        rupees=rupees%500;
         NSLog(@"five hundreds : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else if(100<=rupees && rupees<500){
        int note=rupees/100;
        rupees=rupees%100;
         NSLog(@"hundreds : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else if(50<=rupees && rupees<100){
        int note=rupees/50;
        rupees=rupees%50;
         NSLog(@"fifties : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else if(10<=rupees && rupees<50){
        int note=rupees/10;
        rupees=rupees%10;
         NSLog(@"tens : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else if(5<=rupees && rupees<10){
        int note=rupees/5;
        rupees=rupees%5;
         NSLog(@"fives : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else if(2<=rupees && rupees<5){
        int note=rupees/2;
        rupees=rupees%2;
         NSLog(@"twos : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else if(1<=rupees && rupees<2){
        int note=rupees;
        rupees=rupees%1;
         NSLog(@"ones : %d",note);
        int k = [self notes:rupees];
        return note + k;
    }
    else{
        return 0;
    }
}
@end
