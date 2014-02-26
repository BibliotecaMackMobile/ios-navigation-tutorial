//
//  MackenzieArray.m
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieArray.h"

@implementation MackenzieArray
@synthesize dictionaryArray;

+ (MackenzieArray *)defaultDictionary {
    static MackenzieArray *defaultDictionary = nil;
    if(!defaultDictionary)
        defaultDictionary = [[super allocWithZone:nil] initSecret];
    
    return defaultDictionary;
}

+ (id)allocWithZone:(NSZone *)zone {
    return [self defaultDictionary];
}


- (id)initSecret{
    self = [super init];
    if(self) {
        dictionaryArray = [[NSMutableArray alloc] init];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"A" andWord:@"Aipom" andImage:@"aipom.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"B" andWord:@"Bulbasaur" andImage:@"bulbasaur.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"C" andWord:@"Charmander" andImage:@"charmander.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"D" andWord:@"Dratini" andImage:@"dratini.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"E" andWord:@"Eevee" andImage:@"eevee.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"F" andWord:@"Fletchling" andImage:@"fletchling.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"G" andWord:@"Girafarig" andImage:@"girafarig.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"H" andWord:@"Horsea" andImage:@"horsea.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"I" andWord:@"Inkay" andImage:@"inkay.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"J" andWord:@"Jirachi" andImage:@"jirachi.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"K" andWord:@"Klefki" andImage:@"klefki.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"L" andWord:@"Luvdisc" andImage:@"luvdisc.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"M" andWord:@"Mr. Mime" andImage:@"mrmime.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"N" andWord:@"Natu" andImage:@"natu.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"O" andWord:@"Oddish" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"P" andWord:@"Pikachu" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Q" andWord:@"Qwilfish" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"R" andWord:@"Roselia" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"S" andWord:@"Squirtle" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"T" andWord:@"Taillow" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"U" andWord:@"Unown" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"V" andWord:@"Vanillite" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"W" andWord:@"Wooper" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"X" andWord:@"Xatu" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Y" andWord:@"Yanma" andImage:@"bepidblack.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Z" andWord:@"Zubat" andImage:@"bepidblack.png"]];
        
        
    }
    return self;
}

- (MackenzieObject *) letterAtIndex:(int)newIndex {
    return [dictionaryArray objectAtIndex:newIndex];
}

@end
