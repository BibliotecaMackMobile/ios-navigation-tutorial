//
//  Singleton.h
//  Navigation
//
//  Created by Marcus Vinicius Seixas on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Palavra;

@interface Dicionario : NSObject
{
}
@property (nonatomic, strong) NSMutableArray *palavras;

+(id)sharedInstancia;

-(void)Atualizar;
@end
