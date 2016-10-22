//
//  Banking.m
//  Banking
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "BankOperations.h"
#import "Queue.h"

@implementation BankOperations
@synthesize normalQueue,extraQueue;
int cashBalance = 1000;
-(id)init{
    normalQueue = [[Queue alloc]init];
    extraQueue = [[Queue alloc]init];
    return self;
}
-(void)inputPanel:(char)operation cash:(int)val{
   
//put all people in the queue
    [normalQueue enqueue:operation cash:val];

}


-(void)counter {
    //BOOL value=[normalQueue isEmpty];

    while (!normalQueue.isEmpty){
        Node *k= [normalQueue dequeue];
        if (k.operation == 'd') {
            cashBalance = cashBalance+k.cash;
            NSLog(@"Deposited :%d",k.cash);
            NSLog(@"cash balance :%d",cashBalance);
            [self extra];        //prioritizing the extra queue
        }
        else if (k.operation == 'w') {
            
            if (k.cash <= cashBalance && extraQueue.isEmpty){
                cashBalance -=k.cash;
                NSLog(@"withdrawed:%d",k.cash);
                NSLog(@"cash balance:%d",cashBalance);
                }
            else{
                [extraQueue enqueue:'w' cash:k.cash ];
            }
        }
    }
}

-(void)extra{
   while (!extraQueue.isEmpty){
       Node *k= [extraQueue head];
        if (k.cash <= cashBalance ){
            k = [extraQueue dequeue];
            cashBalance -= k.cash;
            NSLog(@"withdraw : %d",k.cash);
            NSLog(@"cash balance :%d",cashBalance);
        }
        else{
            break;
        }
    }
}
@end
