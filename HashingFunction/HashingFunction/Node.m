//
//  Node.m
//  HashingFunction
//
//  Created by BridgeLabz on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "Node.h"

@implementation Node
@synthesize data,next;


-(id) initNodeWithValue:(int)value
{
    self = [super init];
    data=value;
    next = nil;
    return self;
}
@end
