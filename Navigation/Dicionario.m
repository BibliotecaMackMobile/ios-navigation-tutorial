//
//  Dicionario.m
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"
#import "Letra.h"

@implementation Dicionario

+(Dicionario*)getInstance{
    static Dicionario *instance = nil;
    if(!instance){
        instance = [[super allocWithZone:nil] init];
    }
    return instance;
}

+(id)allocWithZone:(struct _NSZone *)zone{
   
    return [self getInstance];
}

-(id)initSecret{
    self = [super init];
    if(self){
    elDicionario = [[NSMutableArray alloc]init];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"a" andWord:@"Antchamber" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"b" andWord:@"Bomberman" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"c" andWord:@"call of duty" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"d" andWord:@"Dead Island" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"e" andWord:@"Elder Scrolls" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"f" andWord:@"Final Fantasy" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"g" andWord:@"Ghouls 'N Ghosts" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"h" andWord:@"Halo" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"i" andWord:@"Injustice: Gods Among Us" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"j" andWord:@"James Bond 007" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"k" andWord:@"King of Fighters" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"l" andWord:@"Legend of Zelda" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"m" andWord:@"MineCraft" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"n" andWord:@"Ninja Gaiden" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"o" andWord:@"Onimusha: Warlords" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"p" andWord:@"Pokemon" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"q" andWord:@"Quake" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"r" andWord:@"Resident Evil" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"s" andWord:@"Super Mario" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"t" andWord:@"Tekken" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"u" andWord:@"Unreal Tournament" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"v" andWord:@"Viewtiful Joe" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"x" andWord:@"XCOM" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"w" andWord:@"World of Warcraft" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"y" andWord:@"Yu-Gi-Oh!" andImagename:@"giraffe.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"z" andWord:@"Zoo Tycoon" andImagename:@"giraffe.jpg"]];
    }
    return self;
}



@end
