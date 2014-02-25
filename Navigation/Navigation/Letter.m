//
//  Letter.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letter.h"
#import "Singleton.h"

@implementation Letter

@synthesize word;
@synthesize letter;

-(void)alfabeto{
    Singleton* mut = [Singleton instanciar];
    
    for(char cha = 'A'; cha <= 'Z'; cha++){
        Letter* object = [Letter new];
        [object setLetter:cha];
        [mut addLetter:object];
    }
    
    
}
@end
