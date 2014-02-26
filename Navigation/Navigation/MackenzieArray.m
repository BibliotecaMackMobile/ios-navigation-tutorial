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
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"A" andWord:@"Articuno" andImage:@"a.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"B" andWord:@"Bulbasaur" andImage:@"b.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"C" andWord:@"Charizard" andImage:@"c.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"D" andWord:@"Dratini" andImage:@"d.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"E" andWord:@"Exeggutor" andImage:@"e.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"F" andWord:@"Farfetch'D" andImage:@"f.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"G" andWord:@"Gyarados" andImage:@"g.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"H" andWord:@"Hitmonlee" andImage:@"h.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"I" andWord:@"Igglypuff" andImage:@"i.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"J" andWord:@"Jirachi" andImage:@"j.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"K" andWord:@"Kingler" andImage:@"k.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"L" andWord:@"Lapras" andImage:@"l.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"M" andWord:@"Moltres" andImage:@"m.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"N" andWord:@"Ninetales" andImage:@"n.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"O" andWord:@"Onix" andImage:@"o.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"P" andWord:@"Pikachu" andImage:@"p.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Q" andWord:@"Quagsire" andImage:@"q.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"R" andWord:@"Rapidash" andImage:@"r.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"S" andWord:@"Squirtle" andImage:@"s.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"T" andWord:@"Tentacruel" andImage:@"t.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"U" andWord:@"Unown" andImage:@"u.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"V" andWord:@"Vibrava" andImage:@"v.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"W" andWord:@"Weepinbell" andImage:@"w.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"X" andWord:@"Xatu" andImage:@"x.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Y" andWord:@"Yanma" andImage:@"y.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Z" andWord:@"Zapdos" andImage:@"z.png"]];
        
        
    }
    return self;
}

- (MackenzieObject *) letterAtIndex:(int)newIndex {
    return [dictionaryArray objectAtIndex:newIndex];
}

@end
