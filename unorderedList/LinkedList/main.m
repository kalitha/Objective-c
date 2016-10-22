//
//  main.m
//  LinkedList
//
//  Created by Kalitha H N on 18/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
// Purpose:Read the Text from a file, split it into words and arrange it as Linked List. Take a user input to search a Word in the List. If the Word is not found then add it to the list, and if it found then remove the word from the List. In the end save the list into a file

#import <Foundation/Foundation.h>
//#import "Node.h"
#import "LinkedList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char word[20];
        int value;
                //NSString* key;
        LinkedList *obj=[[LinkedList alloc]init];
       
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
            [obj add:key];
        }
        
        
        
//        [obj display];
        
        NSLog(@"Enter the element to be searched ");
        scanf("%s",word);
        NSString *name=[NSString stringWithCString:word encoding:1];
        value = [obj search:name];
        if (value==1) {
            [obj remove:name];
            
        }
        else {
            [obj add:name];
            }
        
        [obj display];
        
//         [fileManager createFileAtPath:@"" contents:data attributes:nil];
    }
    return 0;
}
