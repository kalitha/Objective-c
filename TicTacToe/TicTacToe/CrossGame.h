//
//  CrossGame.h
//  TicTacToe
//
//  Created by BridgeLabz on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CrossGame : NSObject
{
    char gameArray[3][3];
}
-(void)print:(char[3][3])arr;
-(BOOL)addElements:(char[3][3])arr1 withNum:(char)num1 playerName:(NSString *)name;
-(BOOL)checkHorizontal:(char[3][3])arr2 withName:(NSString *)name1;
-(BOOL)checkVertical:(char[3][3])arr3 withName:(NSString *)name2;
-(BOOL)checkDiagonal:(char[3][3])arr4 withName:(NSString *)name3;

-(int)get:(int)i :(int)j;
@end
