//
//  Singleton.m
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
+(id)inicia{
    static Singleton *single = nil;
    if (!single) {
        single = [[super allocWithZone:nil]init];
    }
    return single;
}
@end
