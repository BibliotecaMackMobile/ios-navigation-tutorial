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
        
        aux = [[Palavra alloc] initWithDados:@"E" palavra:@"Escola" imagem:@"escola.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"F" palavra:@"Faca" imagem:@"faca.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"G" palavra:@"Gato" imagem:@"gato.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"H" palavra:@"Helicóptero" imagem:@"helicoptero.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"I" palavra:@"Ilha" imagem:@"ilha.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"J" palavra:@"Jacaré" imagem:@"jacare.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"K" palavra:@"Kiwi" imagem:@"kiwi.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"L" palavra:@"Lapis" imagem:@"lapis.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"M" palavra:@"Nariz" imagem:@"nariz.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"O" palavra:@"Ovo" imagem:@"ovo.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"P" palavra:@"Pato" imagem:@"pato.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"Q" palavra:@"Queijo" imagem:@"queijo.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"R" palavra:@"Rato" imagem:@"rato.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"S" palavra:@"Sapo" imagem:@"sapo.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"T" palavra:@"Tatu" imagem:@"tatu.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"U" palavra:@"Uva" imagem:@"uva.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"V" palavra:@"Vestido" imagem:@"vestido.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"W" palavra:@"Whatsapp" imagem:@"whatsapp.png"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"X" palavra:@"Xerife" imagem:@"xerife.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"Y" palavra:@"Youtube" imagem:@"youtube.jpg"];
        [self.palavras addObject:aux];
        
        aux = [[Palavra alloc] initWithDados:@"Z" palavra:@"Zebra" imagem:@"zebra.jpg"];
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
