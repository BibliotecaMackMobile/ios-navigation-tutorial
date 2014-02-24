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
                      [[Pagina alloc] initWithImage:Nil Title:@"D" Word:@"Aranha"], @"D",
                      [[Pagina alloc] initWithImage:Nil Title:@"E" Word:@"Aranha"], @"E",
                      [[Pagina alloc] initWithImage:Nil Title:@"F" Word:@"Aranha"], @"F",
                      [[Pagina alloc] initWithImage:Nil Title:@"G" Word:@"Aranha"], @"G",
                      [[Pagina alloc] initWithImage:Nil Title:@"H" Word:@"Aranha"], @"H",
                      [[Pagina alloc] initWithImage:Nil Title:@"I" Word:@"Aranha"], @"I",
                      [[Pagina alloc] initWithImage:Nil Title:@"J" Word:@"Aranha"], @"J",
                      [[Pagina alloc] initWithImage:Nil Title:@"K" Word:@"Aranha"], @"K",
                      [[Pagina alloc] initWithImage:Nil Title:@"L" Word:@"Aranha"], @"L",
                      [[Pagina alloc] initWithImage:Nil Title:@"M" Word:@"Aranha"], @"M",
                      [[Pagina alloc] initWithImage:Nil Title:@"N" Word:@"Aranha"], @"N",
                      [[Pagina alloc] initWithImage:Nil Title:@"O" Word:@"Aranha"], @"O",
                      [[Pagina alloc] initWithImage:Nil Title:@"P" Word:@"Aranha"], @"P",
                      [[Pagina alloc] initWithImage:Nil Title:@"Q" Word:@"Aranha"], @"Q",
                      [[Pagina alloc] initWithImage:Nil Title:@"R" Word:@"Aranha"], @"R",
                      [[Pagina alloc] initWithImage:Nil Title:@"S" Word:@"Aranha"], @"S",
                      [[Pagina alloc] initWithImage:Nil Title:@"T" Word:@"Aranha"], @"T",
                      [[Pagina alloc] initWithImage:Nil Title:@"U" Word:@"Aranha"], @"U",
                      [[Pagina alloc] initWithImage:Nil Title:@"V" Word:@"Aranha"], @"V",
                      [[Pagina alloc] initWithImage:Nil Title:@"X" Word:@"Aranha"], @"X",
                      [[Pagina alloc] initWithImage:Nil Title:@"W" Word:@"Aranha"], @"Y",
                      [[Pagina alloc] initWithImage:Nil Title:@"Y" Word:@"Aranha"], @"W",
                      [[Pagina alloc] initWithImage:Nil Title:@"Z" Word:@"Aranha"], @"Z"
            ,nil];
        array = [[NSArray alloc] initWithObjects:@"A",
                    @"B",@"C",@"D",@"E",@"F",
                    @"G",@"H",@"I",@"J",@"K",
                    @"L",@"M",@"N",@"O",@"P",
                    @"Q",@"R",@"S",@"T",@"U",
                    @"V",@"X",@"W",@"Y",@"Z",
            nil];
        cont = 1;

    }
    return self;
}

@end
