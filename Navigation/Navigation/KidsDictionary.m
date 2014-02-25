//
//  KidsDictionary.m
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "KidsDictionary.h"
#import "ItemDictionary.h"

@implementation KidsDictionary

#pragma mark Synthesize

@synthesize actualIndex;

#pragma mark Methods

+ (KidsDictionary *)sharedInstance{
    static KidsDictionary *instance = nil;
    if(!instance)
    {
        instance = [[super allocWithZone:(struct _NSZone *)nil]initSecret];
    }
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

- (id)initSecret
{
    self = [super init];
    if(self)
    {
        dictionary = [[NSMutableDictionary alloc]init];
        actualIndex = -1;
        letters = [[NSArray alloc]initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"X",@"W",@"Y",@"Z", nil];
        
        [self writeDictionary];
    }
    return self;
}

- (void)writeDictionary
{
    ItemDictionary *item = [[ItemDictionary alloc]initWithName:@"ActionScript" andImageName:@"actionscript.jpg"];
    [dictionary setObject:item forKey:@"A"];
    
    item = [[ItemDictionary alloc]initWithName:@"Basic" andImageName:@"basic.png"];
    [dictionary setObject:item forKey:@"B"];
}

- (ItemDictionary *)getActualItem
{
    ItemDictionary *item = [dictionary objectForKey:[letters objectAtIndex:actualIndex]];
    return item;
}

@end