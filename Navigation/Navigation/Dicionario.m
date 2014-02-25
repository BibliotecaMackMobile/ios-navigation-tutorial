//
//  Dicionario.m
//  Navigation
//
//  Created by Jean de Freitas Gomes on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"

@implementation Dicionario

@synthesize dicionario;

+(Dicionario *) sharedInstance
{
    static Dicionario *instance = nil;
    if ( !instance ) instance = [[super allocWithZone:nil] initSecreto];
    return instance;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

-(id) initSecreto
{
    self = [super init];
    if (self)
    {
        dicionario = [[NSMutableDictionary alloc] init];
        
        [dicionario setObject:@"Abelha" forKey:@"A"];
        [dicionario setObject:@"Bola" forKey:@"B"];
        [dicionario setObject:@"Casa" forKey:@"C"];
        [dicionario setObject:@"Dado" forKey:@"D"];
        [dicionario setObject:@"Elefante" forKey:@"E"];
        [dicionario setObject:@"Faca" forKey:@"F"];
        [dicionario setObject:@"Gato" forKey:@"G"];
        [dicionario setObject:@"Hotel" forKey:@"H"];
        [dicionario setObject:@"IPVA" forKey:@"I"];
        [dicionario setObject:@"Jaca" forKey:@"J"];
        [dicionario setObject:@"Limão" forKey:@"L"];
        [dicionario setObject:@"Miley" forKey:@"M"];
        [dicionario setObject:@"Navio" forKey:@"N"];
        [dicionario setObject:@"Ovo" forKey:@"O"];
        [dicionario setObject:@"Poste" forKey:@"P"];
        [dicionario setObject:@"Queijo" forKey:@"Q"];
        [dicionario setObject:@"Rato" forKey:@"R"];
        [dicionario setObject:@"Sino" forKey:@"S"];
        [dicionario setObject:@"Tatu" forKey:@"T"];
        [dicionario setObject:@"Uva" forKey:@"U"];
        [dicionario setObject:@"Veiculo" forKey:@"V"];
        [dicionario setObject:@"Xadrez" forKey:@"X"];
        [dicionario setObject:@"Zebra" forKey:@"Z"];
        [dicionario setObject:@"KKKKK" forKey:@"K"];
        [dicionario setObject:@"Yolo" forKey:@"Y"];
        [dicionario setObject:@"Walter White" forKey:@"W"];
    }
    
    return self;
}

-(NSMutableDictionary *) getDicionario
{
    return  dicionario;
}

@end
