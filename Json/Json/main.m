//
//  main.m
//  Json
//
//  Created by Kalitha HN on 24/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//  Purpose:Create a JSON file having Inventory Details for Rice, Pulses and Wheats with properties name, weight, price per kg. 

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* path = @"/Users/bridgelabz/Desktop/ios/Json/Json/file.json";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        
        NSData *jsonData = [fileContents dataUsingEncoding:NSUTF8StringEncoding];
        NSError *e = nil;
        NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&e];
        NSLog(@"%@",json);
    }

    return 0;
}
