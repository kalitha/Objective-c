//
//  Queue.h
//  Palindrome
//
//  Created by BridgeLabz on 21/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Deque: NSObject{
    
    Node *head;
    Node *newNode;
    Node *temp;
}
-(void)addFront:(char)data;
-(char)removeFront;
-(void)display;
-(BOOL)isEmpty;
@end
