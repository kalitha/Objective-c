//
//  Stack.m
//  BalancedParanthesis
//
//  Created by Nikita HN LLP on 19/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Stack.h"

@implementation Stack
NSMutableArray* arr;

- (id) initWithSize: (int) aSize {
    self = [super init];
    
    if(self)
    {
     arr = [[NSMutableArray alloc] initWithCapacity:aSize];
    }
    
    return self;
}

// function to push into the top of stack
- (void) push:(char)element {
    

    id val = [NSString stringWithFormat:@"%c", element];
    [arr addObject:val];
    top=top+1;

}

// function to pop from the top of stack
- (id) pop {

        id ret = [arr lastObject];
        [arr removeLastObject];
        --top;
    return ret;
}

-(id)peekObject
{
    
        return [arr lastObject];
}

- (int) size {
    return top;
}

-(void)check
{
    if (top==0) {
        
        NSLog(@"Balanced");
    }
    else NSLog(@"unbalanced");
}

@end
