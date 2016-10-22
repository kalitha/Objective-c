//
//  Queue.m
//  Banking
//
//  Created by Kalitha H.N on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "Queue.h"


@implementation Queue
@synthesize head;
Node *lastNode;
Node *currentNode;
-(void)enqueue:(char)operation cash:(int)val{
    
     Node *newNode=[[Node alloc]init:operation cash:val];
    if(head==nil){
        head=newNode;
    }
    else{
        lastNode=head;
        while (lastNode.next != nil) {
            lastNode = lastNode.next;
    }
        lastNode.next = newNode;
}
}

-(id)dequeue {
    Node *temp = head;
    if (head.next != nil){
        currentNode = head.next;
        head.next = nil;
        head = currentNode;
    }
    else{
        head = nil;
    }
    
    return (temp);

}

-(BOOL)isEmpty{
    if (head == nil){
        return true;
    }
    else{
        return false;
    }
}

-(int)size{
    int count = 1 ;
    currentNode = head;
    while (currentNode.next != nil) {
        currentNode = currentNode.next;
        count += 1;
    }
    return count;
}

//displaying the queue

-(void)displa{
    currentNode = head;
    while (currentNode != nil ){
       // print("\(currentNode.operation) \t \(currentNode.cash)")
       
        currentNode = currentNode.next;
    }
}

@end

