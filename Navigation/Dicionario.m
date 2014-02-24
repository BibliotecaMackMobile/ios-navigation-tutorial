//
//  Dicionario.m
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"

@implementation Dicionario

+(Dicionario*)getInstance{
    static Dicionario *instance = nil;
    if(!instance){
        instance = [[super allocWithZone:nil] init];
    }
    return instance;
}

+(id)allocWithZone:(struct _NSZone *)zone{
   
    return [self getInstance];
}

-(id)initSecret{
    self = [super init];
    if(self){
        
        
    elDicionario = [[NSDictionary alloc]init];
    }
    return self;
}



@end
