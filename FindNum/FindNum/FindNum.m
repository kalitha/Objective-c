/*
 * @Author:Kalitha H.N
 * File:ToFindNum.java
 * Date:21/10/2016
 * Purpose:To take an command-line argument N, asks you to think of a number between 0 and N-1, where N = 2^n, and
 * always guesses the answer with n questions.
 **/


#import "FindNum.h"

@implementation FindNum
-(void)findNum:(int)steps{
int result = 1,N;
BOOL check;
int value;
//To calculate N value
for(int i=1;i<=steps;i++){
    result = result*2;
}
N = result;
NSLog(@"Imagine the number between 1 to %d ",N);
int first = 1;
int last = N/2;
int i=2,j=4;

//To perform n Number of trials
for(int k=1;k<steps;k++){
    NSLog(@"Is Your number Present Between %d to %d true=1 or false=0",first,last);
    scanf("%d",&value);
    if(value==1){
        N=N/2;
        last = last-((last-first+1)/2);
        
    }
    else{
        first = first+N/i;
        last = last+N/j;
        i = i+i;
        j = j+j;
    }
}
NSLog(@"Is Your number is %d true=1 or false=0",first);
scanf("%d",&value);
    if(value==1){
NSLog(@"Your number is: %d ",first);
    }
else
NSLog(@"Your number is: %d ",(last+1));
}
@end
