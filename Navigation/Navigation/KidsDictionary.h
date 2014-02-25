//
//  KidsDictionary.h
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemDictionary.h"

@interface KidsDictionary : NSObject{
    NSMutableDictionary *dictionary;
    NSArray *letters;
}

#pragma mark Property

@property int actualIndex;

#pragma mark Methods

+ (KidsDictionary *)sharedInstance;
- (void)writeDictionary;
- (ItemDictionary *)getActualItem;

@end
