//
//  Dicionario.m
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"
#import "Singleton.h"

@implementation Dicionario

-(void)adicionaPalavra: (NSString *)palavra letraGrande: (NSString *)letraGrande imagem: (UIImage *)imagem{
    self.palavra = palavra;
    self.letraGrande = letraGrande;
    self.imagem = imagem;
    
    Singleton *single = [Singleton inicia];
    [single addLetra:self];
}

@end
