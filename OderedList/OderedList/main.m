//
//  main.m
//  OderedList
//
//  Created by Kalitha H N on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderedList.h"
        
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                
                NSData *path = [NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/ios/OderedList/OderedList/file.txt"];
                NSString *lines = [[NSString alloc]initWithBytes:[path bytes] length:[path length] encoding:NSUTF8StringEncoding];
                
                NSString *delimiter = @"\n";
                NSString *delimiter2 =@" ";
                
                NSArray *arr = [lines componentsSeparatedByString:delimiter];
                NSArray *tempArray = [[NSArray alloc]init];
                
                for (int k=0; k<[arr count]; k++)
                {
                    NSArray *ary = [[arr objectAtIndex:k] componentsSeparatedByString:delimiter2];
                    tempArray = [tempArray arrayByAddingObjectsFromArray:ary];
                }
                
                NSMutableArray *array = [NSMutableArray arrayWithArray:tempArray];
                
                OrderedList *olist = [[OrderedList alloc]init];
                
                for (int i=0; i<[array count]; i++)
                {
                    int num = [[array objectAtIndex:i] intValue];
                    //NSLog(@"%d",num);
                    [olist InsertWord:num];
                }
                
                [olist print];
                
                int num1;
                NSLog(@"Enter the number to be searched");
                scanf("%d",&num1);
                
                if ([olist search:num1])
                {
                    [olist remove:num1];
                }
                else
                {
                    [olist InsertWord:num1];
                }

    }
    return 0;
}
