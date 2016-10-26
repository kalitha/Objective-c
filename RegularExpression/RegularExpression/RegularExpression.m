//
//  RegularExpression.m
//  RegularExpression
//
//  Created by Kalitha H N on 22/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import "RegularExpression.h"

@implementation RegularExpression
-(void)regularExpression:(NSString *)str{
    char firstName[20];
    char phoneNumber[20];
    char lastName[20];
    
    NSLog(@"enter your first name");
    scanf("%s",firstName);
    NSString *frstNme=[NSString stringWithUTF8String:firstName];
    
    NSRegularExpression *regex =[NSRegularExpression regularExpressionWithPattern:@"<<name>>" options:NSRegularExpressionCaseInsensitive error:nil];
    
  NSString *string=[regex stringByReplacingMatchesInString:str options:0 range:NSMakeRange(0, [str length]) withTemplate:frstNme];
    
    NSLog(@"enter your last name");
    scanf(" %[^\n]s",lastName);
    NSString *lstNme=[NSString stringWithUTF8String:lastName];
    NSString *fullName=[frstNme stringByAppendingString:lstNme];
    
    NSRegularExpression *regex1=[NSRegularExpression regularExpressionWithPattern:@"<<full name>>" options:NSRegularExpressionCaseInsensitive error:nil];
    
    NSString *string1=[regex1 stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:fullName];
    
    NSLog(@"enter your phone number");
    scanf("%s",phoneNumber);
    NSString *phnNmber=[NSString stringWithUTF8String:phoneNumber];
    
    NSRegularExpression *regex2 =[NSRegularExpression regularExpressionWithPattern:@"xxxxxxxxxx" options:NSRegularExpressionCaseInsensitive error:nil];
    
    NSString *string2=[regex2 stringByReplacingMatchesInString:string1 options:0 range:NSMakeRange(0, [string1 length]) withTemplate:phnNmber];
    
    
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc]init];
    [dateFormat setDateStyle:@"dd/mm/yyyy"];
   NSString *date=[dateFormat stringFromDate:[NSDate date]];
    
    NSRegularExpression *regex3=[NSRegularExpression regularExpressionWithPattern:@"dd/mm/yyyy" options:NSRegularExpressionCaseInsensitive error:nil];
    
    NSString *string3=[regex3 stringByReplacingMatchesInString:string2 options:0 range:NSMakeRange(0, [string2 length]) withTemplate:date];
    NSLog(@"%@",string3);
}
@end
