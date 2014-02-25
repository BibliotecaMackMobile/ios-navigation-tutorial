//
//  Sections.m
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Sections.h"

@interface Sections()

@end

@implementation Sections

@synthesize alphabetArray;
@synthesize lettersDictionary;

-(id)init
{
    self = [super init];
    if(self)
    {
        alphabetArray = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
        lettersDictionary = [[NSMutableDictionary alloc] initWithObjects:@[[[Section alloc] initWithLetterTitle:@"Abacaxi" letterImage:nil andLetterFonetics:@"Abacaxi"],[[Section alloc] initWithLetterTitle:@"Banana" letterImage:nil andLetterFonetics:@"Banana"],[[Section alloc] initWithLetterTitle:@"Cavalo" letterImage:nil andLetterFonetics:@"Cavalo"],[[Section alloc] initWithLetterTitle:@"Dado" letterImage:nil andLetterFonetics:@"Dado"],[[Section alloc] initWithLetterTitle:@"Elefante" letterImage:nil andLetterFonetics:@"Elefante"],[[Section alloc] initWithLetterTitle:@"Feijão" letterImage:nil andLetterFonetics:@"Feijão"],[[Section alloc] initWithLetterTitle:@"Gigante" letterImage:nil andLetterFonetics:@"Gigante"],[[Section alloc] initWithLetterTitle:@"Helicóptero" letterImage:nil andLetterFonetics:@"Helicóptero"],[[Section alloc] initWithLetterTitle:@"iPad" letterImage:nil andLetterFonetics:@"Aipédi"],[[Section alloc] initWithLetterTitle:@"Jogador" letterImage:nil andLetterFonetics:@"Jogador"],[[Section alloc] initWithLetterTitle:@"Kiwi" letterImage:nil andLetterFonetics:@"Kiwi"],[[Section alloc] initWithLetterTitle:@"Lenhador" letterImage:nil andLetterFonetics:@"Lenhador"],[[Section alloc] initWithLetterTitle:@"Macaco" letterImage:nil andLetterFonetics:@"Macaco"],[[Section alloc] initWithLetterTitle:@"Navio" letterImage:nil andLetterFonetics:@"Navio"],[[Section alloc] initWithLetterTitle:@"Oasis" letterImage:nil andLetterFonetics:@"Oasis"],[[Section alloc] initWithLetterTitle:@"Pato" letterImage:nil andLetterFonetics:@"Pato"],[[Section alloc] initWithLetterTitle:@"Queijo" letterImage:nil andLetterFonetics:@"Queijo"],[[Section alloc] initWithLetterTitle:@"Rato" letterImage:nil andLetterFonetics:@"Rato"],[[Section alloc] initWithLetterTitle:@"Sonho" letterImage:nil andLetterFonetics:@"Sonho"],[[Section alloc] initWithLetterTitle:@"Trabalho" letterImage:nil andLetterFonetics:@"Trabalho"],[[Section alloc] initWithLetterTitle:@"Ubisoft" letterImage:nil andLetterFonetics:@"Ubisófti"],[[Section alloc] initWithLetterTitle:@"Vagão" letterImage:nil andLetterFonetics:@"Vagão"],[[Section alloc] initWithLetterTitle:@"Waze" letterImage:nil andLetterFonetics:@"Ueizi"],[[Section alloc] initWithLetterTitle:@"Xbox" letterImage:nil andLetterFonetics:@"Équisbox"],[[Section alloc] initWithLetterTitle:@"Yes" letterImage:nil andLetterFonetics:@"Yes"],[[Section alloc] initWithLetterTitle:@"Zebra" letterImage:nil andLetterFonetics:@"Zebra"]] forKeys:alphabetArray];
    }
    return self;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

+(id)sharedInstance
{
    static Sections * instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^
    {
        instance = [[super allocWithZone:nil] init];
    });
    return instance;
}

@end