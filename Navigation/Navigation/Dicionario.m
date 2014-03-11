//
//  Dicionario.m
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"

@implementation Dicionario

-(id)init{
    self= [super init];
    if (self){
        NSMutableArray *vetorLetras= [[NSMutableArray alloc]initWithObjects:@"A", @"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
        
        NSMutableArray *vetorPalavras= [[NSMutableArray alloc]initWithObjects:@"avião",@"bola",@"casa",@"dado",@"elefante",@"fada",@"gato",@"helicóptero",@"igreja",@"jacaré",@"Kiko",@"lápis",@"macaco",@"navio",@"óculos",@"pato",@"queijo",@"rato",@"sapato",@"tatu",@"uva",@"vaca",@"Wall-e",@"xícara",@"yakissoba",@"zebra", nil];

        dicionario= [[NSMutableDictionary alloc]init];
        [dicionario dictionaryWithValuesForKeys:vetorLetras];
        
        //UIImage *imagem= [[UIImage alloc]init];
        
        for (int i=0; i<26; i++){
            unichar l= i+ 65; // 65= A
            NSString *key= [[NSString stringWithCharacters:&l length:1]capitalizedString];
            
            //NSLog(@"%@", key);
            UIImage *imagem= [UIImage imageNamed:[NSString stringWithFormat:@"img%@.png", key]];
            
            Letra *letra= [[Letra alloc]initWithImagem:imagem andPalavra:[vetorPalavras objectAtIndex:i]];
            
            [dicionario setObject:letra forKey:key];
        }
    }
    return self;
}

+(Dicionario *)sharedInstance{
    static Dicionario *instancia= nil;
    if (!instancia){
        instancia= [[super allocWithZone:nil]init];
    }
    return instancia;
}

+(id)allocWithZone:(NSZone *)zone{
    return [self sharedInstance];
}

-(NSDictionary *) letrasDicionario{
    return dicionario;
}
@end
