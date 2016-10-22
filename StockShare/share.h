//
//  share.h
//  StockShare
//
//  Created by BridgeLabz Solution LLP on 14/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface share : NSObject

-(void)entershares:(int)num;
-(void)totalValue:(NSMutableArray*)a shareValue:(NSMutableArray*)b intValue:(int)i name:(NSString*)s num:(int)num;
-(void)totalShare:(int)num;

//-(void)totalvalue:(int)num;
//-(void)totalshare:(int)num;

@end
