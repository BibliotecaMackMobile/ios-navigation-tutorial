//
//  Dicionario.h
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dicionario : NSObject
@property NSMutableArray *letras;
@property UIImage *imagem;
@property NSString *palavra;
@property NSString *letraGrande;

-(void)adicionaPalavra: (NSString *)palavra letraGrande: (NSString *)letraGrande imagem: (UIImage *)imagem;

@end
