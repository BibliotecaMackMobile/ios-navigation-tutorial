//
//  Pagina.m
//  Navigation
//
//  Created by Gustavo Luís Soré on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Pagina.h"

@implementation Pagina

@synthesize image,title,word;

-(id)initWithImage:(UIImage*)img Title:(NSString*)t Word:(NSString*)w{
    self = [super init];
    image = img;
    title = t;
    word = w;
    return self;
}

@end
