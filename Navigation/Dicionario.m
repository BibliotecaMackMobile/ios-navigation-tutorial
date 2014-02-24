//
//  Dicionario.m
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"
#import "Singleton.h"

@implementation Dicionario
@synthesize letras;

//-(id)init{
//    self = [super init];
//    if (self) {
//        if (!letras) {
//        [letras addObject:@"A"];
//        [letras addObject:@"B"];
//        [letras addObject:@"C"];
//        [letras addObject:@"D"];
//        [letras addObject:@"E"];
//        [letras addObject:@"F"];
//        [letras addObject:@"G"];
//        [letras addObject:@"H"];
//        [letras addObject:@"I"];
//        [letras addObject:@"J"];
//        [letras addObject:@"K"];
//        [letras addObject:@"L"];
//        [letras addObject:@"M"];
//        [letras addObject:@"N"];
//        [letras addObject:@"O"];
//        [letras addObject:@"P"];
//        [letras addObject:@"Q"];
//        [letras addObject:@"R"];
//        [letras addObject:@"S"];
//        [letras addObject:@"T"];
//        [letras addObject:@"U"];
//        [letras addObject:@"V"];
//        [letras addObject:@"W"];
//        [letras addObject:@"X"];
//        [letras addObject:@"Y"];
//        [letras addObject:@"Z"];
//        }
//    }
//    return self;
//}

-(void)adicionaPalavra: (NSString *)palavra letraGrande: (NSString *)letraGrande imagem: (UIImage *)imagem{
    self.palavra = palavra;
    self.letraGrande = letraGrande;
    self.imagem = imagem;
    
    Singleton *single = [Singleton inicia];
    [[single letras]addObject:self];
}

@end
