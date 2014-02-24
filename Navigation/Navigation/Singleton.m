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
                      [[Pagina alloc] initWithImage:nil Title:@"A" Word:@"Aranha"], @"A",
                      [[Pagina alloc] initWithImage:Nil Title:@"B" Word:@"Bicicleta"], @"B",
                      [[Pagina alloc] initWithImage:Nil Title:@"C" Word:@"Casa"], @"C",
                      [[Pagina alloc] initWithImage:Nil Title:@"D" Word:@"Dado"], @"D",
                      [[Pagina alloc] initWithImage:Nil Title:@"E" Word:@"Escada"], @"E",
                      [[Pagina alloc] initWithImage:Nil Title:@"F" Word:@"Faca"], @"F",
                      [[Pagina alloc] initWithImage:Nil Title:@"G" Word:@"Guarda-Chuva"], @"G",
                      [[Pagina alloc] initWithImage:Nil Title:@"H" Word:@"Helicóptero"], @"H",
                      [[Pagina alloc] initWithImage:Nil Title:@"I" Word:@"Igreja"], @"I",
                      [[Pagina alloc] initWithImage:Nil Title:@"J" Word:@"Janela"], @"J",
                      [[Pagina alloc] initWithImage:Nil Title:@"K" Word:@"Kiwi"], @"K",
                      [[Pagina alloc] initWithImage:Nil Title:@"L" Word:@"Lua"], @"L",
                      [[Pagina alloc] initWithImage:Nil Title:@"M" Word:@"Morango"], @"M",
                      [[Pagina alloc] initWithImage:Nil Title:@"N" Word:@"Navio"], @"N",
                      [[Pagina alloc] initWithImage:Nil Title:@"O" Word:@"Óculos"], @"O",
                      [[Pagina alloc] initWithImage:Nil Title:@"P" Word:@"Porta"], @"P",
                      [[Pagina alloc] initWithImage:Nil Title:@"Q" Word:@"Queijo"], @"Q",
                      [[Pagina alloc] initWithImage:Nil Title:@"R" Word:@"Raio"], @"R",
                      [[Pagina alloc] initWithImage:Nil Title:@"S" Word:@"Sapo"], @"S",
                      [[Pagina alloc] initWithImage:Nil Title:@"T" Word:@"Toalha"], @"T",
                      [[Pagina alloc] initWithImage:Nil Title:@"U" Word:@"Uva"], @"U",
                      [[Pagina alloc] initWithImage:Nil Title:@"V" Word:@"Vaca"], @"V",
                      [[Pagina alloc] initWithImage:Nil Title:@"X" Word:@"Xícara"], @"X",
                      [[Pagina alloc] initWithImage:Nil Title:@"W" Word:@"Whatsapp"], @"Y",
                      [[Pagina alloc] initWithImage:Nil Title:@"Y" Word:@"Youtube"], @"W",
                      [[Pagina alloc] initWithImage:Nil Title:@"Z" Word:@"Zebra"], @"Z"
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
