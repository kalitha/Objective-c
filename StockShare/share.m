//
//  share.m
//  StockShare
//
//  Created by BridgeLabz Solution LLP on 14/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "share.h"

@implementation share
NSMutableArray *d;

-(void)entershares:(int)num
{
    NSMutableArray *c=[[NSMutableArray alloc]initWithCapacity:100];
    NSMutableArray *a=[[NSMutableArray alloc]initWithCapacity:100];
    NSMutableArray *b=[[NSMutableArray alloc]initWithCapacity:100];
       char shareName[10];
    int shareValue,numShares,i;
    NSString *s=[NSString stringWithCString:shareName encoding:1];
    
    
    for ( i=0; i<num; i+=1)
    {
        NSLog(@"enter share name");
        scanf("%s",shareName);
        [c insertObject:s atIndex:i];
        
        NSLog(@"enter num of shares");
        scanf("%d",&numShares);
        
        id id1=[NSNumber numberWithInt:numShares];
        [a addObject:id1];
        
        NSLog(@"enter share value");
        scanf("%d",&shareValue);
        
        id id2=[NSNumber numberWithInt:shareValue];
        [b addObject:id2];
    }
        
    [self totalValue:a shareValue:b intValue:i name:s num:num];
    
    
    [self totalShare:num];
}

-(void)totalValue:(NSMutableArray *)a shareValue:(NSMutableArray*)b intValue:(int)i name:(NSString*)s num:(int)num
{
    d=[[NSMutableArray alloc]initWithCapacity:100];
    
        for (int i=0; i<num; i+=1) {
        
    
    NSNumber *temp1 = [a objectAtIndex:i];
        long t1 = [temp1 integerValue];
        
    NSNumber *temp2 = [b objectAtIndex:i];
    long t2=[temp2 integerValue];
        
        long t3=t1*t2;
    NSLog(@"%ld",t3);
        
        id id1=[NSNumber numberWithLong:t3];
        [d addObject:id1];
    }
    
        
}

-(void)totalShare:(int)num
{
   
    
    long sum=0;
    
    for (int i=0; i<num; i+=1)
    {
        NSNumber *temp1 = [d objectAtIndex:i];
        
        sum = sum+[temp1 integerValue];
        
    }
    NSLog(@"the total value of shares are %ld",sum);
}

    



@end
