//
//  Singleton.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Letter.h"

@implementation Singleton
@synthesize array;

static Singleton* instancia = nil;

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return  [self instanciar];
}


+(id)instanciar{
    if(!instancia)
        instancia = [[super allocWithZone:nil]init];
    return instancia;
}

- (id) init
{
    self = [super init];
    if (self) {
        array = [[NSMutableArray alloc] init];
        
        for(char cha = 'A'; cha <= 'Z'; cha++){
            Letter* object = [Letter new];
            
            if (cha == 'A') {
                //Baby
                [object setWord:@"Akachan"];
            }
            if (cha == 'B') {
                //Cazuza
                [object setWord:@"Baka"];
            }
            if (cha == 'C') {
                //Word
                [object setWord:@"Chikyuu"];
            }
            if (cha == 'D') {
                //phone
                [object setWord:@"Denwa"];
            }
            if (cha == 'E') {
                //Rodrigo
                [object setWord:@"Ecchi"];
            }
            if (cha == 'F') {
                //Owl
                [object setWord:@"Fukurou "];
            }
            if (cha == 'G') {
                //Sky
                [object setWord:@"Goten"];
            }
            if (cha == 'H') {
                //Flower
                [object setWord:@"Hana"];
            }
            if (cha == 'I') {
                //Dog
                [object setWord:@"Inu"];
            }
            if (cha == 'J') {
                //Home
                [object setWord:@"Jinka"];
            }
            if (cha == 'K') {
                //Perfect
                [object setWord:@"Kanpeki"];
            }
            if (cha == 'L') {
                //Lamen
                [object setWord:@"Lamen"];
            }
            if (cha == 'M') {
                //Right
                [object setWord:@"Mimi"];
            }
            if (cha == 'N') {
                //Cat
                [object setWord:@"Neko"];
            }
            if (cha == 'O') {
                //ghost
                [object setWord:@"Obake"];
            }
            if (cha == 'P') {
                //Roubar
                [object setWord:@"Pakuru"];
            }
            if (cha == 'Q') {
                //Sakura
                [object setWord:@"Quero"];
            }
            if (cha == 'R') {
                //camelo
                [object setWord:@"Rakuda"];
            }
            if (cha == 'S') {
                //Monkey
                [object setWord:@"Saru"];
            }
            if (cha == 'T') {
                //Gun
                [object setWord:@"Tanjuu"];
            }
            if (cha == 'U') {
                //Cavalo
                [object setWord:@"Uma"];
            }
            if (cha == 'V') {
                [object setWord:@"Vilma"];
            }
            if (cha == 'W') {
                //Eagle
                [object setWord:@"Washi"];
            }
            if (cha == 'X') {
                [object setWord:@"xicara"];
            }
            if (cha == 'Y') {
                //Amora
                [object setWord:@"Yamaguwa"];
            }
            if (cha == 'Z') {
                //skull
                [object setWord:@"Zukotsu"];
            }

            [object setLetter:cha];
            [array addObject:object];
        }
    }
    return self;
}

-(void)addLetter:(Letter*)letter{
    [array addObject:letter];
}

@end
