//
//  main.m
//  Palindrome
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deque.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //checking the node woks or not
//        Node *node=[[Node alloc]init:'d'];
//        Node *node1=[[Node alloc]init:'t'];
//        Node *node2=[[Node alloc]init:'h'];
//        NSLog(@"%c",node.data);
//        NSLog(@"%c",node1.data);
//        node.next=node1;
//        node1.next = node2;
//        
//        NSLog(@"%c",node.data);
//        NSLog(@"%@",node.next);
//        NSLog(@"%c",node.next.next.data);

        char w[20];
        int count;
        Deque *deque=[[Deque alloc]init];
        NSLog(@"enter a string");
        scanf("%s",w);
        
        NSString *s=[NSString stringWithCString:w encoding:NSASCIIStringEncoding];
        NSInteger len=[s length];
        //NSLog(@"%@", s);
        
        for(int i=0;i<len;i++){
            char temp=[s characterAtIndex:i];
        //NSLog(@"adfront %c",temp);
         [deque addFront:temp];
        }
    
        
//       Deque *deque=[[Deque alloc]init];
//        [deque addFront:'q'];
//        [deque addFront:'n'];
        for (int i=0; i<len; i++) {
            //char temp1[20]=cha
            char temp=[s characterAtIndex:i];
            char temp2=[deque removeFront];
            if (temp == temp2){
                count++;
            }
            
        }
        if(count==len)
            NSLog(@"palindrome");
        else
        NSLog(@"not palindrome");
     // [deque display];
        }
    return 0;
}
