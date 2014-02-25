//
//  PalavrasSingleton.h
//  Navigation
//
//  Created by Marcelo Mendonça Miranda on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PalavrasSingleton : NSObject

@property NSMutableArray *palavras;

+(PalavrasSingleton *)sharedInstance;

@end
