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
        
        aux = [[Palavra alloc] initWithDados:@"C" palavra:@"Barco" imagem:@"barco.jpg"];
        [self.palavras addObject:aux];
        aux = [[Palavra alloc] initWithDados:@"D" palavra:@"Barco" imagem:@"barco.jpg"];
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
