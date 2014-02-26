//
//  LetterSingleton.m
//  Navigation
//
//  Created by Bruno Rendeiro on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterSingleton.h"
#import "Letter.h"

@implementation LetterSingleton

@synthesize alphabet,index;

+(LetterSingleton *)sharedInstance
{
    static LetterSingleton *instancia = nil;
    if (!instancia)
    {
        instancia = [[super allocWithZone:nil] initSecreto];
    }
    return instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

-(id)initSecreto
{
    self = [super init];
    if(self)
    {
        alphabet = [[NSMutableDictionary alloc] init];
        index = 0;
        [self criarLetter];

    }
    return self;
}

-(void)criarLetter
{
    Letter *a = [[Letter alloc] initWithPalavra:@"Aranha"  andFoto:nil];
    Letter *b = [[Letter alloc] initWithPalavra:@"Batata"  andFoto:nil];
    Letter *c = [[Letter alloc] initWithPalavra:@"Carro"  andFoto:nil];
    Letter *d = [[Letter alloc] initWithPalavra:@"Dubai"  andFoto:nil];
    Letter *e = [[Letter alloc] initWithPalavra:@"Edifício"  andFoto:nil];
    Letter *f = [[Letter alloc] initWithPalavra:@"Faca"  andFoto:nil];
    Letter *g = [[Letter alloc] initWithPalavra:@"Gato"  andFoto:nil];
    Letter *h = [[Letter alloc] initWithPalavra:@"Harpa"  andFoto:nil];
    Letter *i = [[Letter alloc] initWithPalavra:@"Instrumento"  andFoto:nil];
    Letter *j = [[Letter alloc] initWithPalavra:@"Jumento"  andFoto:nil];
    Letter *k = [[Letter alloc] initWithPalavra:@"Kiwi"  andFoto:nil];
    Letter *l = [[Letter alloc] initWithPalavra:@"Laranja"  andFoto:nil];
    Letter *m = [[Letter alloc] initWithPalavra:@"Maça"  andFoto:nil];
    Letter *n = [[Letter alloc] initWithPalavra:@"Nostradamus"  andFoto:nil];
    Letter *o = [[Letter alloc] initWithPalavra:@"Orelha"  andFoto:nil];
    Letter *p = [[Letter alloc] initWithPalavra:@"Papagaio"  andFoto:nil];
    Letter *q = [[Letter alloc] initWithPalavra:@"Queijo"  andFoto:nil];
    Letter *r = [[Letter alloc] initWithPalavra:@"Rato"  andFoto:nil];
    Letter *s = [[Letter alloc] initWithPalavra:@"Sapo"  andFoto:nil];
    Letter *t = [[Letter alloc] initWithPalavra:@"Tatu"  andFoto:nil];
    Letter *u = [[Letter alloc] initWithPalavra:@"Uva"  andFoto:nil];
    Letter *v = [[Letter alloc] initWithPalavra:@"Vassoura"  andFoto:nil];
    Letter *w = [[Letter alloc] initWithPalavra:@"Whisky"  andFoto:nil];
    Letter *x = [[Letter alloc] initWithPalavra:@"Xícara"  andFoto:nil];
    Letter *y = [[Letter alloc] initWithPalavra:@"Youtube"  andFoto:nil];
    Letter *z = [[Letter alloc] initWithPalavra:@"Zarabatana"  andFoto:nil];

    [alphabet setObject:a forKey:@"A"];
    [alphabet setObject:b forKey:@"B"];
    [alphabet setObject:c forKey:@"C"];
    [alphabet setObject:d forKey:@"D"];
    [alphabet setObject:e forKey:@"E"];
    [alphabet setObject:f forKey:@"F"];
    [alphabet setObject:g forKey:@"G"];
    [alphabet setObject:h forKey:@"H"];
    [alphabet setObject:i forKey:@"I"];
    [alphabet setObject:j forKey:@"J"];
    [alphabet setObject:k forKey:@"K"];
    [alphabet setObject:l forKey:@"L"];
    [alphabet setObject:m forKey:@"M"];
    [alphabet setObject:n forKey:@"N"];
    [alphabet setObject:o forKey:@"O"];
    [alphabet setObject:p forKey:@"P"];
    [alphabet setObject:q forKey:@"Q"];
    [alphabet setObject:r forKey:@"R"];
    [alphabet setObject:s forKey:@"S"];
    [alphabet setObject:t forKey:@"T"];
    [alphabet setObject:u forKey:@"U"];
    [alphabet setObject:v forKey:@"V"];
    [alphabet setObject:w forKey:@"W"];
    [alphabet setObject:x forKey:@"X"];
    [alphabet setObject:y forKey:@"Y"];
    [alphabet setObject:z forKey:@"Z"];
    
    
//    sortedKeys = [[alphabet allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}

-(int) atualiza
{
    return index++;
}


@end
