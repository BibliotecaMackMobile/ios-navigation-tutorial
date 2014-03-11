//
//  Dicionario.h
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Letra.h"

@interface Dicionario : NSObject
{
    NSMutableDictionary *dicionario;
}

+(Dicionario *)sharedInstance;

-(NSDictionary *) letrasDicionario;
@end
