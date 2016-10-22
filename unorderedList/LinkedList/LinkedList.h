//
//  LinkedList.h
//  LinkedList
//
//  Created by Kalitha H N on 18/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface LinkedList : NSObject{
    Node *head;
}
@property(strong) Node *head;
-(void)add:(NSString*)data;
-(void)display;
-(void)remove:(NSString*)word;
-(int)search:(NSString*)word;
-(void) writeToLogFile:(NSString*)content;
@end
