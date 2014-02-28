//
//  Singleton.m
//  Navigation
//
//  Created by Gustavo Luís Soré on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Pagina.h"

@implementation Singleton

@synthesize dictionary,array,cont;

+(Singleton *)getInstancia{
    static Singleton *instancia = nil;
    if(!instancia){
        instancia = [[super allocWithZone:nil]init];
    }
    return instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone{
    return [self getInstancia];
}

-(id)init {
    if (self = [super init]) {
        dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"aranha.jpg"] Title:@"A" Word:@"Aranha"], @"A",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"bicicleta.jpg"] Title:@"B" Word:@"Bicicleta"], @"B",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"casa.jpeg"] Title:@"C" Word:@"Casa"], @"C",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"dado.jpg"] Title:@"D" Word:@"Dado"], @"D",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"escada.jpg"] Title:@"E" Word:@"Escada"], @"E",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"faca.jpg"] Title:@"F" Word:@"Faca"], @"F",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"guardachuva.jpg"] Title:@"G" Word:@"Guarda-Chuva"], @"G",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"helicoptero.jpg"] Title:@"H" Word:@"Helicóptero"], @"H",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"igreja.jpg"] Title:@"I" Word:@"Igreja"], @"I",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"janela.jpg"] Title:@"J" Word:@"Janela"], @"J",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"kiwi.jpg"] Title:@"K" Word:@"Kiwi"], @"K",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"lua.jpg"] Title:@"L" Word:@"Lua"], @"L",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"morango.jpg"] Title:@"M" Word:@"Morango"], @"M",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"navio.jpg"] Title:@"N" Word:@"Navio"], @"N",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"oculos.jpg"] Title:@"O" Word:@"Óculos"], @"O",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"porta.jpg"] Title:@"P" Word:@"Porta"], @"P",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"queijo.jpeg"] Title:@"Q" Word:@"Queijo"], @"Q",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"raio.jpg"] Title:@"R" Word:@"Raio"], @"R",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"sapo.jpg"] Title:@"S" Word:@"Sapo"], @"S",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"toalha.jpg"] Title:@"T" Word:@"Toalha"], @"T",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"uva.jpg"] Title:@"U" Word:@"Uva"], @"U",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"vaca.jpg"] Title:@"V" Word:@"Vaca"], @"V",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"xicara.jpg"] Title:@"X" Word:@"Xícara"], @"X",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"whatsapp.jpg"] Title:@"W" Word:@"Whatsapp"], @"Y",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"youtube.jpg"] Title:@"Y" Word:@"Youtube"], @"W",
                      [[Pagina alloc] initWithImage:[UIImage imageNamed:@"zebra.jpg"] Title:@"Z" Word:@"Zebra"], @"Z"
            ,nil];
        array = [[NSArray alloc] initWithObjects:@"A",
                    @"B",@"C",@"D",@"E",@"F",
                    @"G",@"H",@"I",@"J",@"K",
                    @"L",@"M",@"N",@"O",@"P",
                    @"Q",@"R",@"S",@"T",@"U",
                    @"V",@"X",@"W",@"Y",@"Z",
            nil];
        cont = 0;

    }
    return self;
}

@end
