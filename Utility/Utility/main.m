//
//  main.m
//  Utility
//
//  Created by BridgeLabz on 24/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utility.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //bubble sort
        Utility *utility=[[Utility alloc]init];
        int n;
        NSData *path = [NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/ios/OderedList/OderedList/file.txt"];
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        for (int i=0; i<[allLinedStrings count]; i++) {
            
            //             key=[allLinedStrings componentsJoinedByString:@" "];
            NSString *key = [allLinedStrings objectAtIndex:i];
            
            NSMutableArray *array=[[NSMutableArray alloc]initWithCapacity:n];
         
            //calling method
        [utility sorting:array value:n];
        
            
         //binary search
        int keyElement;
        NSLog(@"enter the key element to find");
        scanf("%d",&keyElement);
        NSNumber *keyNum=[NSNumber numberWithInt:keyElement];
        [utility binarySearch:array numberToEnter:keyNum];
            
            
       //insertion sort
        [utility insertionSorting:array value:n];
        
            
            
        //bubble sort for strings
        NSString* path = @"/Users/bridgelabz/Desktop/ios/unorderedList/LinkedList/file.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        for (int i=0; i<[allLinedStrings count]; i++) {
            
            //             key=[allLinedStrings componentsJoinedByString:@" "];
            NSString *key = [allLinedStrings objectAtIndex:i];
            //[obj add:key];
        
    }
    return 0;
}
