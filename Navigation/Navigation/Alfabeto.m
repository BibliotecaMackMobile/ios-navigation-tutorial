//
//  Alfabeto.m
//  Navigation
//
//  Created by Lucas da Silva Pereira on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Alfabeto.h"

@implementation Alfabeto
+(Alfabeto*)getInstance
{
    static Alfabeto *alfabeto = nil;
    if (!alfabeto) {
        alfabeto = [[super allocWithZone:nil] init];
    }
    return alfabeto;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self getInstance];
}

-(id)init
{
    if (!alfabetoDictionary) {
        AlfabetoLetra *letraA = [[AlfabetoLetra alloc] initWithLetra:'a' ePalavra:@"Avestruz" eImagem:[UIImage imageNamed:@"avestruz.png"]];
        AlfabetoLetra *letraB = [[AlfabetoLetra alloc] initWithLetra:'b' ePalavra:@"Burro" eImagem:[UIImage imageNamed:@"burro.png"]];
        AlfabetoLetra *letraC = [[AlfabetoLetra alloc] initWithLetra:'c' ePalavra:@"Coelho" eImagem:[UIImage imageNamed:@"coelho.png"]];
        AlfabetoLetra *letraD = [[AlfabetoLetra alloc] initWithLetra:'d' ePalavra:@"Doninha" eImagem:[UIImage imageNamed:@"doninha.png"]];
        AlfabetoLetra *letraE = [[AlfabetoLetra alloc] initWithLetra:'e' ePalavra:@"Esquilo" eImagem:[UIImage imageNamed:@"esquilo.png"]];
        AlfabetoLetra *letraF = [[AlfabetoLetra alloc] initWithLetra:'f' ePalavra:@"Foca" eImagem:[UIImage imageNamed:@"foca.png"]];
        AlfabetoLetra *letraG = [[AlfabetoLetra alloc] initWithLetra:'g' ePalavra:@"Golfinho" eImagem:[UIImage imageNamed:@"golfinho.png"]];
        AlfabetoLetra *letraH = [[AlfabetoLetra alloc] initWithLetra:'h' ePalavra:@"Hipopótamo" eImagem:[UIImage imageNamed:@"hipopotamo.png"]];
        AlfabetoLetra *letraI = [[AlfabetoLetra alloc] initWithLetra:'i' ePalavra:@"Iguana" eImagem:[UIImage imageNamed:@"iguana.png"]];
        AlfabetoLetra *letraJ = [[AlfabetoLetra alloc] initWithLetra:'j' ePalavra:@"Jacaré" eImagem:[UIImage imageNamed:@"jacare.png"]];
        AlfabetoLetra *letraK = [[AlfabetoLetra alloc] initWithLetra:'k' ePalavra:@"Kiwi" eImagem:[UIImage imageNamed:@"kiwi.png"]];
        AlfabetoLetra *letraL = [[AlfabetoLetra alloc] initWithLetra:'l' ePalavra:@"Leão" eImagem:[UIImage imageNamed:@"leao.png"]];
        AlfabetoLetra *letraM = [[AlfabetoLetra alloc] initWithLetra:'m' ePalavra:@"Morcego" eImagem:[UIImage imageNamed:@"morcego.png"]];
        AlfabetoLetra *letraN = [[AlfabetoLetra alloc] initWithLetra:'n' ePalavra:@"Naja" eImagem:[UIImage imageNamed:@"naja.png"]];
        AlfabetoLetra *letraO = [[AlfabetoLetra alloc] initWithLetra:'o' ePalavra:@"Ovelha" eImagem:[UIImage imageNamed:@"ovelha.png"]];
        AlfabetoLetra *letraP = [[AlfabetoLetra alloc] initWithLetra:'p' ePalavra:@"Porco" eImagem:[UIImage imageNamed:@"porco.png"]];
        AlfabetoLetra *letraQ = [[AlfabetoLetra alloc] initWithLetra:'q' ePalavra:@"Quati" eImagem:[UIImage imageNamed:@"quati.png"]];
        AlfabetoLetra *letraR = [[AlfabetoLetra alloc] initWithLetra:'r' ePalavra:@"Raposa" eImagem:[UIImage imageNamed:@"raposa.png"]];
        AlfabetoLetra *letraS = [[AlfabetoLetra alloc] initWithLetra:'s' ePalavra:@"Sapo" eImagem:[UIImage imageNamed:@"sapo.png"]];
        AlfabetoLetra *letraT = [[AlfabetoLetra alloc] initWithLetra:'t' ePalavra:@"Tamanduá" eImagem:[UIImage imageNamed:@"tamandua.png"]];
        AlfabetoLetra *letraU = [[AlfabetoLetra alloc] initWithLetra:'u' ePalavra:@"Urso-Polar" eImagem:[UIImage imageNamed:@"urso_polar.png"]];
        AlfabetoLetra *letraV = [[AlfabetoLetra alloc] initWithLetra:'v' ePalavra:@"Vaca" eImagem:[UIImage imageNamed:@"vaca.png"]];
        AlfabetoLetra *letraX = [[AlfabetoLetra alloc] initWithLetra:'x' ePalavra:@"Ximango" eImagem:[UIImage imageNamed:@"ximango.png"]];
        AlfabetoLetra *letraZ = [[AlfabetoLetra alloc] initWithLetra:'z' ePalavra:@"Zebra" eImagem:[UIImage imageNamed:@"zebra.png"]];
        alfabetoDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:letraA, @"A", letraB, @"B", letraC, @"C", letraD, @"D",letraE, @"E",letraF, @"F",letraG, @"G",letraH, @"H",letraI, @"I",letraJ, @"J",letraK, @"K",letraL, @"L",letraM, @"M",letraN, @"N",letraO, @"O",letraP, @"P",letraQ, @"Q",letraR, @"R",letraS, @"S",letraT, @"T",letraU, @"U",letraV, @"V",letraX, @"X",letraZ, @"Z", nil];
        currentIndex = 0;
        
        letrasAlfabeto = [[alfabetoDictionary allKeys] sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
                return [obj1 compare:obj2];
            }];
    }
    return self;
}

-(NSString*)letraAnterior
{
    if (currentIndex > 0) {
        return [letrasAlfabeto objectAtIndex:currentIndex-1];
    }
    return nil;
}

-(AlfabetoLetra*)letraAtual
{
 //   NSLog(@"%d %@", currentIndex);//, [letrasAlfabeto objectAtIndex:currentIndex]);
    return (AlfabetoLetra*)[alfabetoDictionary objectForKey:[letrasAlfabeto objectAtIndex:currentIndex]];
}

-(NSString*)letraProxima
{
    if (currentIndex < letrasAlfabeto.count - 1) {
        return [letrasAlfabeto objectAtIndex:currentIndex+1];
    }
    return nil;
}

-(void)moveProximo
{
    if (currentIndex < letrasAlfabeto.count - 1) {
        currentIndex++;
    }
}

-(void)moveAnterior
{
    if (currentIndex > 0) {
        currentIndex--;
    }
}

-(BOOL)hasNext
{
    return currentIndex < letrasAlfabeto.count-1;
}


@end
