//
//  Dicionario.h
//  Navigation
//
//  Created by Jean de Freitas Gomes on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dicionario : NSObject

@property NSMutableDictionary *dicionario;

+(Dicionario *) sharedInstance;

-(NSMutableDictionary *) getDicionario;

@end
