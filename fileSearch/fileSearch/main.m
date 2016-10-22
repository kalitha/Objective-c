//
//  main.m
//  fileSearch
//
//  Created by Kalitha H N 15/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//Purpose: To search the word in the given file

#import <Foundation/Foundation.h>
#import "Search.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //char word[20];
        Search *searchobj=[[Search alloc]init];
        NSString* path = @"/Users/bridgelabz/Desktop/ios/fileSearch/fileSearch/file.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];

        NSMutableArray* array=[NSMutableArray arrayWithArray:allLinedStrings];
        
        [searchobj wordsearch:array];
            }
    return 0;
}
