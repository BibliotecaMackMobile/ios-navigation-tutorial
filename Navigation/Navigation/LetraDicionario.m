//
//  LetraDicionario.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraDicionario.h"

@implementation LetraDicionario

-(id)initWithNome:(NSString *)valorNome andImagem:(UIImage *)valorImg {
    [self setNome:valorNome];
    [self setImg:valorImg];
    return self;
}

@end
