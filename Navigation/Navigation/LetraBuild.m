//
//  LetraBuild.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraBuild.h"

@implementation LetraBuild

-(CGRect)makeRectWithX:(CGFloat)x andY:(CGFloat)y andLargura:(CGFloat)largura andAltura:(CGFloat)altura {
    CGFloat larguraView = [[self view] bounds].size.width;
    CGFloat alturaView = [[self view] bounds].size.height;
    
    CGFloat valorX = x * larguraView / 100;
    CGFloat valorY = 20 + (y * alturaView / 100);
    CGFloat valorLargura = largura * larguraView / 100;
    CGFloat valorAltura = altura * alturaView / 100;
    
    
    return CGRectMake(valorX, valorY, valorLargura, valorAltura);
}

+(LetraBuild *)sharedManager {
    static LetraBuild *instancia;
    if (!instancia) {
        instancia = [[super allocWithZone:Nil] init];
    }
    return instancia;
}

+(void)takeView:(UIView *)valorView {
    [[self sharedManager] setView:valorView];
}

+(id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedManager];
}

-(id)init {
    if (self = [super init]) {
        [self setView:nil];
    }
    return self;
}


@end
