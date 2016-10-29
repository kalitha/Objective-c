//
//  InventoryManagement.m
//  InventoryManagement
//
//  Created by Kalitha H N on 28/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "InventoryManagement.h"

@implementation InventoryManagement
-(void)calCost:(NSDictionary*)array{
    int cost;
    int price;
    int weight;
    //NSLog(@"%@",array[@"data"]);
    
    NSMutableArray* arr=array[@"data"];
    for (int i=0;i<[arr count];i++) {
        //NSLog(@"%@",arr[i]);
        NSDictionary* ar=arr[i];
        NSLog(@"%@",ar[@"name"]);
 //       NSLog(@"%d",[ar[@"price"] intValue]);
//        NSLog(@"%d",(int)ar[@"weight"]);
        price=[ar[@"price"] intValue];
        weight=[ar[@"weight"] intValue];
        cost=price*weight;
        NSLog(@"cost=%d",cost);
}
}

@end