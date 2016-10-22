//
//  main.m
//  AcceptUserName
//
//  Created by Kalitha H N on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char name[20];
        //accept nmae from user
        NSLog(@"enter the username");
        scanf("%s",name);
        
        //converting character array into string
        NSString *s=[NSString stringWithCString:name encoding:NSASCIIStringEncoding];
        
        //printing the username in the form of string
        NSLog(@"the username is %@",s);
    }
    return 0;
}
