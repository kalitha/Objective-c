//
//  OderedList.h
//  OderedList
//
//  Created by BridgeLabz on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderedList : NSObject
{
    int intData;
    OrderedList *nextAddr;
}

-(id)initOL;
-(void)InsertWord:(int)data;
-(void)remove:(int)word;
-(BOOL)search:(int)word;
-(void)print;

@property (readwrite) int intdata;
@property (retain)OrderedList *Nextaddr;
@end
