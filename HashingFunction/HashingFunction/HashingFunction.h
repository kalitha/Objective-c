//
//  HashingFunction.h
//  HashingFunction
//
//  Created by BridgeLabz on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface HashingFunction : NSObject
{
    Node *head;
    
    
}
@property(strong) Node *head;
-(void)add:(int)data;
-(id)remove;
-(void)display;
-(int)search:(int)value;
-(void)remove:(int)value;
@end
