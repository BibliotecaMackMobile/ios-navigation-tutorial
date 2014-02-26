//
//  DataSingleton.m
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "DataSingleton.h"
#import "Letter.h"

@implementation DataSingleton

+ (id)sharedData {
    static DataSingleton *instance = nil;
    
    if (!instance) {
        instance = [[super allocWithZone:nil] init];
    }
    
    return instance;
}

+ (id) allocWithZone:(struct _NSZone *)zone
{
    return [self sharedData];
}

- (id)init {
    self = [super init];
    
    NSArray *values = @[@"Arara",
                        @"Bola",
                        @"Casa",
                        @"Dado",
                        @"Elefante",
                        @"Fogueira",
                        @"Girafa",
                        @"Horta",
                        @"Ilha",
                        @"Jacaré",
                        @"Kiwi",
                        @"Lâmpada",
                        @"Macaco",
                        @"Nuvem",
                        @"Ovo",
                        @"Pato",
                        @"Queijo",
                        @"Rato",
                        @"Sapo",
                        @"Tatu",
                        @"Uva",
                        @"Vaca",
                        @"Washington",
                        @"Xilofone",
                        @"Yakissoba",
                        @"Zebra"];
    
    NSArray *keys = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J",
                      @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T",
                      @"U", @"V", @"W", @"X", @"Y", @"Z"];
    
    NSArray *images = @[@"arara.jpeg",
                        @"bola.jpeg",
                        @"casa.jpg",
                        @"dado.jpeg",
                        @"elefante.jpeg",
                        @"fogueira.jpg",
                        @"girafa.jpeg",
                        @"helicoptero.jpeg",
                        @"ilha.jpeg",
                        @"jacare.jpeg",
                        @"kiwi.jpeg",
                        @"lampada.jpeg",
                        @"macaco.jpeg",
                        @"nuvem.jpeg",
                        @"ovo.jpeg",
                        @"pato.jpeg",
                        @"quati.jpg",
                        @"rato.jpeg",
                        @"sapo.jpeg",
                        @"tatu.jpeg",
                        @"uva.jpeg",
                        @"vaca.jpeg",
                        @"washington.jpeg",
                        @"xilofone.jpeg",
                        @"yakissoba.jpeg",
                        @"zebra.jpeg"];
    
    wordForLetter = [[NSDictionary alloc] initWithObjects:values forKeys:keys];
    imageForLetter = [[NSDictionary alloc] initWithObjects:images forKeys:keys];
    
    
    for (char i = 'A'; i <= 'Z'; i++) {
        Letter *l = [[Letter alloc] initWithTitle:[NSString stringWithFormat:@"%c", i]
                                         andImage:[UIImage imageNamed:imageForLetter[[NSString stringWithFormat:@"%c", i]]]
                                          andWord:wordForLetter[[NSString stringWithFormat:@"%c", i]]];
        [self addLetter:l];
    }
    return self;
}

- (void)addLetter:(NSObject *)letter {
    if (!_dataLetters) {
        _dataLetters = [[NSMutableArray alloc] init];
        _currentIndex = 0;
    }
    [_dataLetters addObject:letter];
}



@end
