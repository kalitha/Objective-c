//
//  Queue.h
//  Banking
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Queue : NSObject{
    Node *head;
}
@property Node* head;
-(void)enqueue:(char)operation cash:(int)val;
-(BOOL)isEmpty;
-(id)dequeue;
@end
