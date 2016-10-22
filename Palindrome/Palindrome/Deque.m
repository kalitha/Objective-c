////
////  Dequeue.m
////  Palindrome
////
////  Created by BridgeLabz on 20/10/16.
////  Copyright © 2016 com.bridgeLabz. All rights reserved.
////
//
#import "Deque.h"
#import "Node.h"
//
@implementation Deque: NSObject
Node *head;
Node *newNode;
Node *temp;

//Appending the char front of the Deque

-(void)addFront:(char)data{
    newNode=[[Node alloc]init:data];
    if(head==nil){
        head=newNode;
    }
    else{
        temp=head;
        head=newNode;
        head.next=temp;
        }
    }

//displaying the deque
-(void)display{
    temp=head;
    while (temp != nil ){
        NSLog(@"%c",temp.data);
        temp = temp.next;
    }
}

-(char)removeFront{
    if(![self isEmpty]) {
        
        temp=head.next;
      char temp1=head.data;
        head=nil;
        head=temp;
        return temp1;
    }
    return 0;
}
-(BOOL)isEmpty{
    if (head == nil){
        return true;
    }
    return false;
}
@end
