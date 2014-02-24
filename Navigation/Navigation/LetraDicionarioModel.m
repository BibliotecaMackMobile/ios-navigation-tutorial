//
//  LetraDicionarioModel.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraDicionarioModel.h"
#import "LetraDicionario.h"

@implementation LetraDicionarioModel

#pragma mark - padrão singleton

+(LetraDicionarioModel *)sharadManager {
    static LetraDicionarioModel *instancia;
    if (!instancia) {
        instancia = [[super allocWithZone:Nil] init];
    }
    return instancia;
}

+(id)allocWithZone:(struct _NSZone *)zone {
    return [self sharadManager];
}

-(id)init {
    if (self = [super init]) {
        [self setLista:[[NSMutableDictionary alloc] init]];
    }
    return self;
}

@end
