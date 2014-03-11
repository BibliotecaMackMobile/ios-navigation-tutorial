//
//  Letra.h
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letra : NSObject
{
    UIImage *imagem;
    NSString *palavra;
}

@property UIImage *imagem;
@property NSString *palavra;


-(id)initWithImagem:(UIImage *)i andPalavra: (NSString *)p;
@end
