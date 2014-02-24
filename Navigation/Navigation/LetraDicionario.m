//
//  LetraDicionario.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraDicionario.h"

@implementation LetraDicionario

-(id)initWithNome:(NSString *)valorNome andImageView:(UIImageView *)valorImgView andImage:(UIImage *)valorImg andBotao:(UIButton *)valorBtn {
    
    [self setNome:valorNome];
    [self setImgView:valorImgView];
    [self setImg:valorImg];
    [self setBtn:valorBtn];
    
    return self;
}

@end
