//
//  main.m
//  Banking
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BankOperations.h"
#import "Node.h"
#import "Queue.h"
int n=3;
int main(int argc, const char * argv[]) {

   // Queue *q = [[Queue alloc]init];
//    [q enqueue:'l' cash:10];
//    [q enqueue:'j' cash:11];
//    
//    Node *temp = [q dequeue];
//    NSLog(@"%c",temp.operation);
//    NSLog(@"%d",temp.cash);
//    
//    temp = [q dequeue];
//    NSLog(@"%c",temp.operation);
//    NSLog(@"%d",temp.cash);


   BankOperations *bank = [[BankOperations alloc]init];
    int choice;
    //Taking user input for Deposit and withdraw
    
    while (true) {
        int cash;
        NSLog(@"\n\t Press 1 : If you want to Deposit\n\t Press 2 : If you want to Withdraw\n\t Press 0: Exit");
        scanf("%d",&choice);
        if (choice == 1) {
            NSLog(@"\n\tHow much do you want to deposit :");
            scanf("%d",&cash);
            [bank inputPanel:'d' cash: cash];  //adding to the main queue
        }
        else if (choice == 2){
            NSLog(@"\n\tHow much do you want to withdraw :");
            scanf("%d",&cash);
            [bank inputPanel:'w' cash: cash];  //adding to the main queue
        }
        else if (choice == 0){
            break;
        }
        else{
            NSLog(@"Invalid choice");
        }
    }
    NSLog(@"\n\toperations at the cash counter\n");
    [bank counter];
    
}
