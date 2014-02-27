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
        [p setIndice1:0];
        [[self palavras] addObject:p];

        p = [[Palavra alloc] init];
        [p setLetra:@"A"];
        [p setPalavra:@"Arvore"];
        [p setImagem:@"arvore.png"];
        [p setIndice1:1];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"B"];
        [p setPalavra:@"Botao"];
        [p setImagem:@"button.jpeg"];
        [p setIndice1:2];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"C"];
        [p setPalavra:@"Casa"];
        [p setImagem:@"casa.jpg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"D"];
        [p setPalavra:@"dados"];
        [p setImagem:@"dados.jpg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"E"];
        [p setPalavra:@"Elefante"];
        [p setImagem:@"elefante.jpg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"F"];
        [p setPalavra:@"Familia"];
        [p setImagem:@"familia.jpg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"G"];
        [p setPalavra:@"Gato"];
        [p setImagem:@"gato.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"H"];
        [p setPalavra:@"Helicoptero"];
        [p setImagem:@"helicoptero.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"I"];
        [p setPalavra:@"Igreja"];
        [p setImagem:@"Igreja.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"J"];
        [p setPalavra:@"Jacare"];
        [p setImagem:@"jacare.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"K"];
        [p setPalavra:@"Kiwi"];
        [p setImagem:@"kiwi.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"L"];
        [p setPalavra:@"Lua"];
        [p setImagem:@"lua.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"M"];
        [p setPalavra:@"Melancia"];
        [p setImagem:@"melancia.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"N"];
        [p setPalavra:@"Navio"];
        [p setImagem:@"navio.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"O"];
        [p setPalavra:@"Ovo"];
        [p setImagem:@"ovo.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"P"];
        [p setPalavra:@"Pintinho"];
        [p setImagem:@"pintinho.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"Q"];
        [p setPalavra:@"Queijo"];
        [p setImagem:@"queijo.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"R"];
        [p setPalavra:@"Rato"];
        [p setImagem:@"rato.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"S"];
        [p setPalavra:@"Sol"];
        [p setImagem:@"sol.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"T"];
        [p setPalavra:@"Trem"];
        [p setImagem:@"trem.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"U"];
        [p setPalavra:@"Uva"];
        [p setImagem:@"uva.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"V"];
        [p setPalavra:@"Vo"];
        [p setImagem:@"vo.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"X"];
        [p setPalavra:@"Xicara"];
        [p setImagem:@"xicara.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"Y"];
        [p setPalavra:@"Ying Yang"];
        [p setImagem:@"yangyang.jpeg"];
        [[self palavras] addObject:p];
        
        p = [[Palavra alloc] init];
        [p setLetra:@"Z"];
        [p setPalavra:@"Zebra"];
        [p setImagem:@"zebra.jpeg"];
        [[self palavras] addObject:p];
     
        
    }
    
    return self;
}

-(void)Atualizar{
    [_palavras objectAtIndex:+1];
    
}

+ (id)allocWithZone:(NSZone*)zone {
    return [self sharedInstancia];
}

@end
