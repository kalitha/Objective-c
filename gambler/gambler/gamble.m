//
//  gamble.m
//  gambler
//
//  Created by BridgeLabz Solution LLP on 12/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "gamble.h"

@implementation gamble
-(void)game:(int)stake goalname:(int)goal trialname:(int)trial{
    int bets=0;
    int wins=0;
    int t;
    for (t=0; t<trial; t++) {
        int cash=stake;
        while (cash>0 && cash<goal) {
            bets++;
            if (drand48()<0.5) {
                cash++;
                }
            else cash--;
        }
        if (cash==goal) {
            wins++;
        }
    }
    float perc=(float)wins/trial*100;
    float avg= bets/trial;
    NSLog(@"wins %d",wins);
    NSLog(@"perc %f",perc);
    NSLog(@"avg %f", avg);
}
@end

