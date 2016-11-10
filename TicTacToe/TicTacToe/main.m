//
//  main.m
//  TicTacToe
//
//  Created by Kalitha H N on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//  Purpose: Program to play a Cross Game or Tic-Tac-Toe Game. Player 1 is the Computer and the Player 2 is the user. Player 1 take Random Cell that is the Column and Row.

#import <Foundation/Foundation.h>
#import "CrossGame.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CrossGame *cg = [[CrossGame alloc]init];
        
        char name1[40];
        //char name2[40];
        
        //Taking user input
        NSLog(@"Enter the Player1 Name");
        scanf("%s",name1);
        NSString *player1 = [NSString stringWithUTF8String:name1];
        
        //Taking user input
//        NSLog(@"Enter the Player2 Name");
//        scanf("%s",name2);
//        NSString *player2 = [NSString stringWithUTF8String:name2];
        
        BOOL flag = YES;
        BOOL flag1 = YES;
        int count = 0;
        
        char ary[3][3];
        
        for (int i=0; i<3; i++)
        {
            for (int j=0; j<3; j++)
            {
                ary[i][j] = '_';
            }
        }
        
        //Marking the positions in the TicTacToe grid
        while (flag1)
        {
            if (flag)
            {
                NSLog(@"Player 1 :");
                BOOL flag2 = [cg addElements:ary withNum:'1' playerName:player1 playerIndex:1];
                flag = NO;
                for (int i=0; i<3; i++)
                {
                    for (int j=0; j<3; j++)
                    {
                        ary[i][j] = [cg get:i :j];
                    }
                }
                
                if (flag2)
                {
                    break;
                }
                
                count+=1;
                [cg print:ary];
                if (count == 9) {
                    NSLog(@"Match Drawn");
                    break;
                }
                
            }
            else
            {
                NSLog(@"Computer :");
                BOOL flag3 = [cg addElements:ary withNum:'0' playerName:@"Computer" playerIndex:2];
                flag = YES;
                for (int i=0; i<3; i++)
                {
                    for (int j=0; j<3; j++)
                    {
                        ary[i][j] = [cg get:i :j];
                    }
                }
                
                if (flag3) {
                    break;
                }
                count+=1;
                [cg print:ary];
                
                if (count == 9) {
                    NSLog(@"Match Drawn");
                    break;
                }
            }
        }
    }
    return 0;
}
