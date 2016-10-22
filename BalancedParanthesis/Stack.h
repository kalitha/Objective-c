//
//  Stack.h
//  BalancedParanthesis
//
//  Created by Nikita HN LLP on 19/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#define DEFAULT_SIZE 100;
@interface Stack : NSObject
{
 int size;
 int top;
 
}


- (id) initWithSize: (int) aSize;
- (void) push: (char) element;
- (id) pop;
-(id)peekObject ;
- (int) size ;
-(void)check;
@end
