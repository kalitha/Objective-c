//
//  Ana.m
//  anagram
//
//  Created by BridgeLabz Solution LLP on 13/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Ana.h"

@implementation Anagram
-(void)anagrm:(NSString*)str1 string2:(NSString*)str2 length1:(long)len1 length2:(long)len2;
{
    int count;
    if (len1==len2) {
        NSArray *firstArray = [self toArray:str1]; //calling toArray function with a string argument
        NSArray *secondArray = [self toArray:str2];
        for (int i=0; i<len1; i++) {
            if ([firstArray objectAtIndex:i] == [secondArray objectAtIndex:i]) {
                  count++;//comparing two strings
            }
        }
        if (count==len2)
            NSLog(@"it is an anagram");
        
        else NSLog(@"it is not an anagram");
    }
    else NSLog(@"enter strings of equal length");
}


-(NSArray *)toArray:(NSString*)str
{
    long length = [str length];
   NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:length];
    
    //coverting string to array
    for(int i=0; i<length; i++){
       char temp = [str characterAtIndex:i];
        [array addObject: [NSNumber numberWithChar:temp]];
    }
    
    //sorting the array
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES];
    NSArray *sortedArray = [array sortedArrayUsingDescriptors:@[sort]];

    return sortedArray;
}
@end
