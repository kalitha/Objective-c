//
//  main.m
//  BalancedParanthesis
//
//  Created by Kalitha H N  on 19/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:Program to show Arithmetic Expression is balanced or not.

#import <Foundation/Foundation.h>
#import "Stack.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stack* stack = [[Stack alloc]initWithSize:100];
       
         char input[20];
         char temp;
        int i;
        NSLog(@"enter the expression");
        scanf("%s",input);
        NSString *s = [NSString stringWithUTF8String:input];
        NSUInteger length=s.length;
        
        
        for( i=0; i<length; i++)
      {
             temp = [s characterAtIndex:i];
          //push into the stack if there are open brackets;
            if(temp=='('||temp=='{'||temp=='[')
            {
                
            [stack push:temp];
            }
            
            
            else if (temp==')'||temp=='}'||temp==']')
            {
               NSString *flag= [stack peekObject];
                
                //checking if the bracket in the top of stack is equal to the bracket in d expression
                if ([flag  isEqual: @"{"] && temp =='}') {
                    
                    [stack pop]; //pop if they are equal;

                }
                
                if ([flag  isEqual: @"["] && temp==']') {
                    
                    [stack pop];
                    
                }
                
                
                if ([flag  isEqual: @"("] && temp==')') {
                    
                    [stack pop];
                    
                }
                
            }
        }


        [stack check];
        
    }

    
    return 0;
}
