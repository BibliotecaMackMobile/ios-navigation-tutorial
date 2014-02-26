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
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"C" andWord:@"Charmander" andImage:@"c.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"D" andWord:@"Dratini" andImage:@"d.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"E" andWord:@"Eevee" andImage:@"e.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"F" andWord:@"Fletchling" andImage:@"f.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"G" andWord:@"Girafarig" andImage:@"g.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"H" andWord:@"Horsea" andImage:@"h.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"I" andWord:@"Inkay" andImage:@"i.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"J" andWord:@"Jirachi" andImage:@"j.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"K" andWord:@"Klefki" andImage:@"k.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"L" andWord:@"Luvdisc" andImage:@"l.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"M" andWord:@"Mr. Mime" andImage:@"m.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"N" andWord:@"Natu" andImage:@"n.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"O" andWord:@"Oddish" andImage:@"o.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"P" andWord:@"Pikachu" andImage:@"p.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Q" andWord:@"Qwilfish" andImage:@"q.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"R" andWord:@"Roselia" andImage:@"r.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"S" andWord:@"Squirtle" andImage:@"s.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"T" andWord:@"Taillow" andImage:@"t.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"U" andWord:@"Unown" andImage:@"u.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"V" andWord:@"Vanillite" andImage:@"v.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"W" andWord:@"Wooper" andImage:@"w.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"X" andWord:@"Xatu" andImage:@"x.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Y" andWord:@"Yanma" andImage:@"y.png"]];
        [dictionaryArray addObject:[[MackenzieObject alloc] initWithLetter:@"Z" andWord:@"Zubat" andImage:@"z.png"]];
        
        
    }
    return self;
}

- (MackenzieObject *) letterAtIndex:(int)newIndex {
    return [dictionaryArray objectAtIndex:newIndex];
}

@end
