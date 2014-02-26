//
//  Palavras.m
//  Navigation
//
//  Created by Marcelo Mendonça Miranda on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Palavra.h"

@implementation Palavra



-(id)initWithDados: (NSString *) letra palavra:(NSString *) palavra imagem:(NSString *)imagem{
    
    self = [super init];
    if (self) {
        _letra = letra;
        _palavra = palavra;
        _imagem = imagem;
    }
    return self;
}



@end
