//
//  Palavras.h
//  Navigation
//
//  Created by Marcelo Mendonça Miranda on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Palavras : NSObject


@property NSString *letra;
@property NSString *palavra;
@property NSString *imagem;

-(id)initWithDados: (NSString *) letra palavra:(NSString *) palavra imagem:(NSString *)imagem;

@end
