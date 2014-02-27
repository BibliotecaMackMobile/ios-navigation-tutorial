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
@synthesize dictionary;
@synthesize letters;

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
        actualIndex = 0;
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
    
    item = [[ItemDictionary alloc]initWithName:@"Cobol" andImageName:@"cobol.jpg"];
    [dictionary setObject:item forKey:@"C"];
    
    item = [[ItemDictionary alloc]initWithName:@"Delphi" andImageName:@"delphi.jpg"];
    [dictionary setObject:item forKey:@"D"];
    
    item = [[ItemDictionary alloc]initWithName:@"ECMAScript" andImageName:@"ecmascript.png"];
    [dictionary setObject:item forKey:@"E"];
    
    item = [[ItemDictionary alloc]initWithName:@"Flex" andImageName:@"flex.jpg"];
    [dictionary setObject:item forKey:@"F"];
}

- (ItemDictionary *)getActualItem
{
    ItemDictionary *item = [dictionary objectForKey:[letters objectAtIndex:actualIndex]];
    return item;
}

- (ItemDictionary *)getPreviousItem
{
    ItemDictionary *item;
    if(actualIndex > 0)
    {
        item = [dictionary objectForKey:[letters objectAtIndex:(actualIndex-1)]];
    }
    else
    {
        item = [[ItemDictionary alloc]initWithName:@"" andImageName:@""];
    }
    return item;
}

- (ItemDictionary *)getNextItem
{
    ItemDictionary *item;
    if(actualIndex < [dictionary count])
    {
        item = item = [dictionary objectForKey:[letters objectAtIndex:(actualIndex+1)]];
    }
    else
    {
        item = [[ItemDictionary alloc]initWithName:@"" andImageName:@""];
    }
    return item;
}

@end