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
        //int n;
        NSString *path = @"/Users/bridgelabz/Desktop/ios/Utility/Utility/fileinteger.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        //initializing array
        
        NSMutableArray *array=[[NSMutableArray alloc]init];
        
        //converting string to nsnumber
        for (int i=0; i<[allLinedStrings count]; i++) {
         NSString* arr=[allLinedStrings objectAtIndex:i];
            NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
            f.numberStyle = NSNumberFormatterDecimalStyle;
            NSNumber *key = [f numberFromString:arr];
            //adding each object to array
            [array addObject:key];
        }
        
      [utility sorting:array value:[array count]];
        
        //binarysearch
        char k[10];
        NSLog(@"enter the element to be search");
        scanf("%s",k);
        NSString *s = [NSString stringWithCString:k encoding:1];
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        NSNumber *key = [f numberFromString:s];
        
       [utility binarySearch:array numberToEnter:key];
        
        //insertion sorting
       [utility insertionSorting:array value:[array count]];
  
   
    //bubble sort for strings
    NSString *path1 = @"/Users/bridgelabz/Desktop/ios/Utility/Utility/fileString.txt";
    NSString* fileContents1 =
    [NSString stringWithContentsOfFile:path1
                              encoding:NSUTF8StringEncoding error:nil];
    
    NSMutableArray* allLinedStrings1 =
    [fileContents1 componentsSeparatedByCharactersInSet:
     [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
     [utility stringSorting:allLinedStrings1 value:[allLinedStrings1 count]];
        
    
        char k1[10];
        NSLog(@"enter the element to be search");
        scanf("%s",k1);
        NSString *s1 = [NSString stringWithCString:k1 encoding:1];
        
        [utility stringBinarySearch:allLinedStrings1 stringToEnter:s1];
        
        //insertion sorting
       [utility stringInsertionSorting:allLinedStrings1 value:[allLinedStrings1 count]];
    
     
        
   
    }

    


    return 0;
}
