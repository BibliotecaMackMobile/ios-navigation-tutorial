//
//  Letra.m
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letra.h"

@implementation Letra

@synthesize imagem, palavra;
-(id)initWithImagem:(UIImage *)i andPalavra:(NSString *)p{
    self= [super init];
    if (self){
        imagem = i;
        palavra= p;
    }
    return self;
}

@end
