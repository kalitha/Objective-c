//
//  Node.m
//  Banking
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize operation,cash;
-(id)init:(char)val1 cash:(int)val2{
    operation=val1;
    cash=val2;
    return self;
}

@end
