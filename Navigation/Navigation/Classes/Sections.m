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

@synthesize languagesDictionary;
@synthesize alphabetArray;
@synthesize lettersDictionary;

-(id)init
{
    self = [super init];
    if(self)
    {
        languagesDictionary = @{@"Português":@"pt-BR",@"Inglês":@"en-US",@"Francês":@"fr-FR",@"Espanhol":@"es-ES"};
        alphabetArray = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
        NSArray * objectsArray = @[
                                    @[[[Section alloc] initWithLetterTitle:@[@"Abacaxi",@"Pineapple",@"Ananas",@"Piña"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Abacaxi.jpg"] andLetterFonetics:@[@"Abacaxi",@"Pineapple",@"Ananas",@"Piña"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Banana",@"Banana",@"Banane",@"Plátano"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Banana.jpg"] andLetterFonetics:@[@"Banana",@"Banana",@"Banane",@"Plátano"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Cavalo",@"Horse",@"Cheval",@"Caballo"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Cavalo.png"] andLetterFonetics:@[@"Cavalo",@"Horse",@"Cheval",@"Caballo"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Damasco",@"Damascus",@"Damas",@"Damasco"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Damasco.jpg"] andLetterFonetics:@[@"Damasco",@"Damascus",@"Damas",@"Damasco"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Elefante",@"Elephant",@"Éléphant",@"Elefante"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Elefante.png"] andLetterFonetics:@[@"Elefante",@"Elephant",@"Éléphant",@"Elefante"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Feijão",@"Bean",@"Haricot",@"Haba"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Feijão.png"] andLetterFonetics:@[@"Feijão",@"Bean",@"Haricot",@"Haba"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Guerreiro",@"Warrior",@"Guerrier",@"Guerrero"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Guerreiro.png"] andLetterFonetics:@[@"Guerreiro",@"Warrior",@"Guerrier",@"Guerrero"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Helicóptero",@"Helicopter",@"Hélicoptère",@"Helicóptero"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Helicoptero.png"] andLetterFonetics:@[@"Helicóptero",@"Helicopter",@"Hélicoptère",@"Helicóptero"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Iate",@"Yacht",@"Yacht",@"Yate"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Iate"] andLetterFonetics:@[@"Iate",@"Yacht",@"Yacht",@"Yate"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Jogador",@"Player",@"Joueur",@"Jugador"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Jogador.png"] andLetterFonetics:@[@"Jogador",@"Player",@"Joueur",@"Jugador"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Kiwi",@"Kiwi",@"Kiwi",@"Kiwi"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Kiwi"] andLetterFonetics:@[@"Kiwi",@"Kiwi",@"Kiwi",@"Kiwi"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Lenhador",@"Lumberjack",@"Bûcheron",@"Leñador"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Lenhador.png"] andLetterFonetics:@[@"Lenhador",@"Lumberjack",@"Bûcheron",@"Leñador"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Macaco",@"Singe",@"Monkey",@"Mono"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Macaco.png"] andLetterFonetics:@[@"Macaco",@"Singe",@"Monkey",@"Mono"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Navio",@"Ship",@"Navire",@"Barco"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Navio.png"] andLetterFonetics:@[@"Navio",@"Ship",@"Navire",@"Barco"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Oasis",@"Oasis",@"Oasis",@"Oasis"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Oasis.png"] andLetterFonetics:@[@"Oasis",@"Oasis",@"Oasis",@"Oasis"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Pato",@"Duck",@"Canard",@"Pato"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Pato.png"] andLetterFonetics:@[@"Pato",@"Duck",@"Canard",@"Pato"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Queijo",@"Cheese",@"Fromage",@"Queso"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Queijo.png"] andLetterFonetics:@[@"Queijo",@"Cheese",@"Fromage",@"Queso"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Rato",@"Mouse",@"Souris",@"Ratón"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Rato.jpg"] andLetterFonetics:@[@"Rato",@"Mouse",@"Souris",@"Ratón"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Sonho",@"Dream",@"Rêve",@"Sueño"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Sonho.png"] andLetterFonetics:@[@"Sonho",@"Dream",@"Rêve",@"Sueño"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Tomate",@"Tomato",@"Tomate",@"Tomate"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Tomate.png"] andLetterFonetics:@[@"Tomate",@"Tomato",@"Tomate",@"Tomate"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Universidade",@"University",@"Université",@"Universidad"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Universidade.png"] andLetterFonetics:@[@"Universidade",@"University",@"Université",@"Universidad"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Vaca",@"Cow",@"Vache",@"Vaca"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Vaca.png"] andLetterFonetics:@[@"Vaca",@"Cow",@"Vache",@"Vaca"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Walkman",@"Walkman",@"Baladeur",@"Walkman"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Walkman.png"] andLetterFonetics:@[@"Walquimein",@"Walkman",@"Baladeur",@"Walkman"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Xadrez",@"Chess",@"Échecs",@"Ajedrez"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Xadrez.png"] andLetterFonetics:@[@"Xadrez",@"Chess",@"Échecs",@"Ajedrez"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Yen",@"Yen",@"Yen",@"Yen"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Yen.png"] andLetterFonetics:@[@"Iene",@"Yen",@"Yen",@"Yen"]]],
                                    @[[[Section alloc] initWithLetterTitle:@[@"Zebra",@"Zebra",@"Zèbre",@"Cebra"] forNewLetterLanguages:@[@"Português",@"Inglês",@"Francês",@"Espanhol"] letterImage:[UIImage imageNamed:@"Zebra.png"] andLetterFonetics:@[@"Zebra",@"Zebra",@"Zèbre",@"Cebra"]]]];
        lettersDictionary = [[NSDictionary alloc] initWithObjects:objectsArray forKeys:alphabetArray];
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