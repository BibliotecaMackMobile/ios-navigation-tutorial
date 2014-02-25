//
//  shared.m
//  Navigation
//
//  Created by Gregory on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "shared.h"

@implementation shared

+(shared*)sharedInstance
{
    static shared *listaDicionario = nil;
    if (!listaDicionario) {
        listaDicionario = [[super allocWithZone:nil]init];
    }
    return listaDicionario;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

-(id)init
{
    self = [super init];
    if (self) {
        _count = 0;
        _listaDicionario = [[NSMutableArray alloc]init];
        //_viewController = [[LetraAViewController alloc] initWithNibName:nil bundle:NULL];
    }
    return self;
}

@end
