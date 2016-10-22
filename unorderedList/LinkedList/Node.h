//
//  LinkedList.h
//  LinkedList
//
//  Created by Kalitha H N on 18/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
{
NSString *data;
Node *next;
}
@property(readwrite) NSString* data;
@property (retain) Node *next;
-(id) initNodeWithValue:(NSString*)data;
@end
