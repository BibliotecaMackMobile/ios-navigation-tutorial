//
//  Palavras.m
//  Navigation
//
//  Created by Marcelo Mendonça Miranda on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Palavras.h"

@implementation Palavras

//-(id)init {
//    self = [super init];
//    if (self) {
//        _letra = [[NSString alloc] init];
//        _palavra = [[NSString alloc] init];
//        _imagem = [[NSString alloc] init];
//    }
//    return self;
//}


-(id)initWithDados: (NSString *) letra palavra:(NSString *) palavra imagem:(NSString *)imagem{
    
    self = [super init];
    if (self) {
        _letra = [[NSString alloc] init];
        _palavra = [[NSString alloc] init];
        _imagem = [[NSString alloc] init];
    }
    
    _letra = letra;
    _palavra = palavra;
    _imagem = imagem;
    
    
    return self;
}



@end
