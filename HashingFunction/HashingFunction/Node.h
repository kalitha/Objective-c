//
//  Node.h
//  HashingFunction
//
//  Created by BridgeLabz on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

{
    int data;
    Node *next;
}
@property(readwrite) int data;
@property (retain) Node *next;
-(id)initNodeWithValue:(int)data;
@end
