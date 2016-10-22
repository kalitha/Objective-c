//
//  LinkedList.m
//  LinkedList
//
//  Created by Kalitha H N on 18/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Node.h"

@implementation Node
@synthesize data,next;

-(id) initNodeWithValue:(NSString*)string{
    self = [super init];
    data=string;
    next = nil;
    return self;
}

@end
