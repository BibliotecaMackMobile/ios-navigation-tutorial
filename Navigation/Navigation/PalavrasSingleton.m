//
//  PalavrasSingleton.m
//  Navigation
//
//  Created by Marcelo Mendonça Miranda on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "PalavrasSingleton.h"
#import "Palavra.h"

@implementation PalavrasSingleton

@synthesize palavras;

-(id)init {
    self = [super init];
    if (self) {
        self.palavras = [[NSMutableArray alloc] init];
        
        //Cadastro de palavras aqui...
        
        Palavra *aux = [[Palavra alloc] initWithDados:@"A" palavra:@"Aranha" imagem:@"aranha.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"B" palavra:@"Barco" imagem:@"barco.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"C" palavra:@"Casa" imagem:@"casa.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"D" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"D" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"E" palavra:@"Elefante" imagem:@"elefante.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"F" palavra:@"Faca" imagem:@"faca.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"G" palavra:@"Gato" imagem:@"gato.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"H" palavra:@"???" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"I" palavra:@"Ilha" imagem:@"ilha.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"J" palavra:@"Jacaré" imagem:@"jacare.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"K" palavra:@"???" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"L" palavra:@"Lapis" imagem:@"lapis.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"M" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"N" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"O" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"P" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"Q" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"R" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"S" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"T" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"U" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"V" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"W" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"X" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"Y" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"Z" palavra:@"Dado" imagem:@"dado.jpg"];
        [self.palavras addObject:aux];
    }
    return self;
}

+(PalavrasSingleton *)sharedInstance {
    static PalavrasSingleton *instancia = nil;
    if(!instancia){
        instancia = [[super allocWithZone:nil] init];
    }
    return instancia;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

@end
