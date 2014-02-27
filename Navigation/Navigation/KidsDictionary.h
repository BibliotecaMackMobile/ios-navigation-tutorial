//
//  KidsDictionary.h
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemDictionary.h"

@interface KidsDictionary : NSObject

#pragma mark Property

@property int actualIndex;
@property NSMutableDictionary *dictionary;
@property NSArray *letters;

#pragma mark Methods

+ (KidsDictionary *)sharedInstance;
- (void)writeDictionary;

- (ItemDictionary *)getActualItem;
- (ItemDictionary *)getPreviousItem;
- (ItemDictionary *)getNextItem;

@end
