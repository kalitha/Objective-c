//
//  Banking.h
//  Banking
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue.h"
@interface BankOperations : NSObject{
//-(void)deposit:(int)amount;
//-(void)deposit:(int)amount;
//creating two queue's
//Queue *head;
Queue *normalQueue;
Queue *extraQueue; //if user requested more than we have in the bank
}
@property Queue *normalQueue;
@property Queue *extraQueue;
-(id)init;
-(void)inputPanel:(char)operation cash:(int)val;
-(void)counter;
-(void)extra;
@end
