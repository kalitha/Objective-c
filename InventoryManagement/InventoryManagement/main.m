//
//  main.m
//  InventoryManagement
//
//  Created by BridgeLabz on 28/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InventoryManagement.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InventoryManagement* management=[[InventoryManagement alloc]init];
        NSString*path= @"/Users/bridgelabz/Desktop/ios/InventoryManagement/InventoryManagement/file.json";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        
        NSData *jsonData = [fileContents dataUsingEncoding:NSUTF8StringEncoding ];
        NSError* e=nil;
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&e];
        //NSLog(@"%@",json);
        [management calCost:json];
        
    }
    return 0;
}
