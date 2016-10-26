//
//  utility.h
//  Utility
//
//  Created by BridgeLabz on 24/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject
-(void)sorting:(NSMutableArray *)array value:(int)n;
@property(nonatomic)NSArray *searchArray;
-(void)binarySearch:(NSArray *)array numberToEnter:(NSNumber *)key;
-(void)insertionSorting:(NSMutableArray *)array value:(int)n;
@end
