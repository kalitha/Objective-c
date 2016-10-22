//
//  Ana.h
//  anagram
//
//  Created by BridgeLabz Solution LLP on 13/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Anagram: NSObject

-(void)anagrm:(NSString*)str1 string2:(NSString*)str2 length1:(long)len1 length2:(long)len2;
-(NSArray *)toArray:(NSString*)str;

@end
