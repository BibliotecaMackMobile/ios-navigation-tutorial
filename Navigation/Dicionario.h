//
//  Dicionario.h
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Letra.h"
@interface Dicionario : NSObject
{
    NSMutableArray *elDicionario;
}
-(Letra*)getletra:(int)index;

@end
