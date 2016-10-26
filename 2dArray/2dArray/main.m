//
//  main.m
//  2dArray
//
//  Created by BridgeLabz on 26/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "2dArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        _dArray *array = [[_dArray alloc]init];
        
        int rows,columns;
        NSLog(@"Enter the no. of rows of 2d array");
        scanf("%d",&rows);
        
        NSLog(@"Enter the no. of columns of 2d array");
        scanf("%d",&columns);
        
        NSMutableArray *Rows = [[NSMutableArray alloc]initWithCapacity:rows];
        NSMutableArray *Columns;
        
        for (int i=0; i<rows; i++)
        {
            Columns = [[NSMutableArray alloc]initWithCapacity:columns];
            for (int j=0; j<columns; j++)
            {
                int element;
                NSLog(@"Enter the %d,%d element",i+1,j+1);
                scanf("%d",&element);
                id data = [NSNumber numberWithInt:element];
                [Columns insertObject:data atIndex:j];
            }
            
            [Rows insertObject:Columns atIndex:i];
        }
        
        [array print2DArray:Rows];
    
    }
    return 0;
}
