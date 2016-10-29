//
//  main.m
//  HashingFunction
//
//  Created by BridgeLabz on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HashingFunction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array=[[NSMutableArray alloc]init];
        
        NSString* path = @"/Users/bridgelabz/Desktop/ios/HashingFunction/HashingFunction/file.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        // seperating strings with respect to whitespace and newline character
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSMutableArray* array2=[NSMutableArray arrayWithArray:allLinedStrings];
        for (int i=0;i<11; i++) {
            
            HashingFunction *obj=[[HashingFunction alloc]init];
            [array addObject:obj];
            
        }
        
        
        for (int i=0; i<[array2 count]; i++) {
            
            id key=[array2 objectAtIndex:i];
            
            int value=[key intValue];
            int rem=value%11;
            HashingFunction *obj = [array objectAtIndex:rem];
            [obj add:value];
            
        }
        int num;
        
        NSLog(@"enter a number to be searched");
        scanf("%d",&num);
        int rem1=num%11;
        HashingFunction *obj = [array objectAtIndex:rem1];
        
        int value=  [obj search:num];
        if (value==1) {
            NSLog(@"found");
            [obj remove:num];
        }
        
        else
        {
            
            [obj add:num];
            NSLog(@"not found");
        }
        
        for (int i=0; i<11; i++) {
            NSLog(@"slot number : %d",i);
            HashingFunction *obj = [array objectAtIndex:i];
            
            
            [obj display];
            
        }
    }
    return 0;
}
