//
//  Alfabeto.h
//  Navigation
//
//  Created by Lucas da Silva Pereira on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlfabetoLetra.h"

@interface Alfabeto : NSObject
{
    NSDictionary *alfabetoDictionary;
    NSArray *letrasAlfabeto;
    int currentIndex;
}
+(Alfabeto*)getInstance;
-(NSString*)letraAnterior;
-(AlfabetoLetra*)letraAtual;
-(NSString*)letraProxima;
-(void)moveProximo;
-(void)moveAnterior;
-(BOOL)hasNext;
@end
