//
//  BinarySearchTree.m
//  BinarySearchTree
//
//  Created by BridgeLabz on 28/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree
-(int)search:(int)n{
    int p=2*n;
    int m=n+1;
    int fact=[self factorial:(p)];
    int add=[self factorial:(m)];
    int num=[self factorial:n];
    
    int res=(fact)/(add*num);
    return res;
}

-(int)factorial:(int)num{
    int mul=1;
    for(int i=num;i>=1;i--){
        
        mul=mul*i;
    }
    return(mul);
}
@end
