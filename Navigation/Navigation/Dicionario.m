//
//  Singleton.m
//  Navigation
//
//  Created by Marcus Vinicius Seixas on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"
#import "Palavra.h"

@implementation Dicionario

static Dicionario *sharedInstance = nil;

+ (id)sharedInstancia {
    if (sharedInstance == nil) {
        sharedInstance = [[super allocWithZone:Nil] initSecreto];
    }
    
    return sharedInstance;
}

- (id)initSecreto
{
    self = [super init];
    
    if (self) {
        
        _palavras = [[NSMutableArray alloc] init];
        
        
        Palavra *p = [[Palavra alloc] init];
        [p setLetra:@"Menu"];
        [p setPalavra:@"Dicionario Infantil"];
        [p setImagem:@"dicionario.jpg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"A"];
        [p setPalavra:@"Arvore"];
        [p setImagem:@"dicionario.jpg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"B"];
        [p setPalavra:@"Botao"];
        [p setImagem:@"dicionario.jpg"];
        [[self palavras] addObject:p];
        
        
        
        
    }
    
    return self;
}

+ (id)allocWithZone:(NSZone*)zone {
    return [self sharedInstancia];
}

@end
