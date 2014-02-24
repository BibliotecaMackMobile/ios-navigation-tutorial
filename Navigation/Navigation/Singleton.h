//
//  Singleton.h
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dicionario.h"

@interface Singleton : NSObject
@property NSMutableArray *letras;
+(id)inicia;
@end
