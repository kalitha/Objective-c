//
//  Palindrome.h
//  Palindrome
//
//  Created by BridgeLabz on 20/10/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject{
    char data;
    Node *next;
}
@property char data;

@property Node *next;
-(id)init:(char)data;

@end
