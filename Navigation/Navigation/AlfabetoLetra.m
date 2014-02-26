//
//  AlfabetoLetra.m
//  Navigation
//
//  Created by Lucas da Silva Pereira on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "AlfabetoLetra.h"

@implementation AlfabetoLetra
-(id)init
{
    self = [super init];
    return self;
}

-(id)initWithLetra:(char)l ePalavra:(NSString*)p eImagem:(UIImage*)img
{
    self = [self init];
    if (self) {
        [self setLetra:l];
        [self setPalavra:p];
        _imagem = img;
    }
    return self;
}

-(void)setLetra:(char)l
{
    if (l) {
        letra = [[NSString stringWithFormat:@"%c", l] uppercaseString];
    }
}

-(NSString*)letra
{
    return letra;
}

-(void)setPalavra:(NSString *)p
{
    if (letra && p) {
        NSString *primeiraLetra = [[p substringToIndex:1] uppercaseString];
        if ([primeiraLetra isEqualToString:letra]) {
            _palavra = p;
        }
    }
}
@end
