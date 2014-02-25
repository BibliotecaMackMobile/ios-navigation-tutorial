//
//  ItemDictionary.m
//  Navigation
//
//  Created by Rafael Moris on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ItemDictionary.h"

@implementation ItemDictionary

#pragma mark Synthesize

@synthesize name;
@synthesize imageName;

#pragma mark Init Methods

- (id)initWithName:(NSString *)__name andImageName:(NSString *)__imageName
{
    self = [super init];
    if(self)
    {
        name = __name;
        imageName = __imageName;
    }
    return self;
}

@end
