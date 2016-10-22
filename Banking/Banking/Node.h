//
//  Node.h
//  Banking
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject{
    char operation;
    int cash ;
    Node *next;
}
@property char operation;
@property int cash;
@property Node *next;
-(id)init:(char)val1 cash:(int)val2;
@end
