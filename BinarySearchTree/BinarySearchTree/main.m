//
//  main.m
//  BinarySearchTree
//
//  Created by Kalitha H N on 28/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchTree.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BinarySearchTree* tree=[[BinarySearchTree alloc]init];
    int n;
        NSLog(@"enter the number");
        scanf("%d",&n);
      
        int res=[tree search:n];
        NSLog(@"%d",res);
        
    }
    return 0;
}
