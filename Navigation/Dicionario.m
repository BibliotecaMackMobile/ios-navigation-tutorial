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

-(id)init{
    self = [super init];
    if(self){
    elDicionario = [[NSMutableArray alloc]init];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"a" andWord:@"Antchamber" andImagename:@"2013-01-30_00002.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"b" andWord:@"Bomberman" andImagename:@"bomberman-2-wallpaper-19737.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"c" andWord:@"call of duty" andImagename:@"call_of_duty_modern_warfare_3.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"d" andWord:@"Dead Island" andImagename:@"Dead-Island-Game-Wallpaper.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"e" andWord:@"Elder Scrolls" andImagename:@"the-elder-scrolls-online-screen.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"f" andWord:@"Final Fantasy" andImagename:@"imagens-imagens-final-fantasy-a29404.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"g" andWord:@"Ghouls 'N Ghosts" andImagename:@"ghoulsn-ghosts-15.gif"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"h" andWord:@"Halo" andImagename:@"halo-reach-hd-19201080-high-definition.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"i" andWord:@"Injustice: Gods Among Us" andImagename:@"injustice-wallpaper-wcv3i5tg.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"j" andWord:@"James Bond 007" andImagename:@"James-Bond-007-Blood-Stone.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"k" andWord:@"King of Fighters" andImagename:@"King.of.Fighters.full.713180.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"l" andWord:@"Legend of Zelda" andImagename:@"The-Legend-of-Zelda-Wallpaper (5).jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"m" andWord:@"MineCraft" andImagename:@"1640108.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"n" andWord:@"Ninja Gaiden" andImagename:@"Ninja_Gaiden_Black_Desktop_by_Ninja_Gaiden.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"o" andWord:@"Onimusha" andImagename:@"onimusha1_2.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"p" andWord:@"Pokemon" andImagename:@"pokemon-5.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"q" andWord:@"Quake" andImagename:@"43841.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"r" andWord:@"Resident Evil" andImagename:@"resident_evil_revelations_jill_and_chris-wallpaper-1024x768.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"s" andWord:@"Super Mario" andImagename:@"foto-super-mario-.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"t" andWord:@"Tekken" andImagename:@"tekken5_12.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"u" andWord:@"Unreal Tournament" andImagename:@"Epic-Games-Isn-t-Working-on-Unreal-After-Gears-of-War-3-2.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"v" andWord:@"Viewtiful Joe" andImagename:@"Viewtiful.Joe.full.283279.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"x" andWord:@"XCOM" andImagename:@"XCOM-Enemy-Unknown-Windows-screenshot-001.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"w" andWord:@"World of Warcraft" andImagename:@"dfds.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"y" andWord:@"Yu-Gi-Oh!" andImagename:@"yu-gi-oh.jpg"]];
        [elDicionario addObject:[[Letra alloc]initWithLetter:@"z" andWord:@"Zoo Tycoon" andImagename:@"268-image-Zoo-Tycoon.jpg"]];
    }
    return self;
}
-(Letra*)getletra:(int)index{
    return [elDicionario objectAtIndex:index];
}


@end
