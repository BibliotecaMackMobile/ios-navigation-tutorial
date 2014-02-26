//
//  Dados.m
//  Navigation
//
//  Created by Lucas Domene Firmo on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dados.h"

@implementation Dados

+ (Dados *)sharedInstance
{
    static Dados *sharedInstance = nil;
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:nil] init];
    }
    return sharedInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedInstance];
}

- (void)loadData
{
    //pega o caminho do plist onde estao as palavras e carrega o array "palavras"
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Letras" ofType:@"plist"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    _palavras = [dictionary valueForKey:@"Letras"];
    
    _alfabeto = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
}



@end
