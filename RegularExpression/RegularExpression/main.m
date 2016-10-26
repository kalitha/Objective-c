//
//  main.m
//  RegularExpression
//
//  Created by BridgeLabz on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegularExpression.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RegularExpression *reg=[[RegularExpression alloc]init];
        
        NSString *str = @"Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz dd/mm/yyyy.";
        
        [reg regularExpression:str];
       }
    return 0;
}
