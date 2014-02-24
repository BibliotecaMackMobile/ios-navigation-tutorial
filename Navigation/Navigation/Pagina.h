//
//  Pagina.h
//  Navigation
//
//  Created by Gustavo Luís Soré on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pagina : NSObject

@property (strong,nonatomic) UIImage *image;
@property (strong,nonatomic) NSString *title;
@property (strong,nonatomic) NSString *word;

-(id)initWithImage:(UIImage*)img Title:(NSString*)t Word:(NSString*)w;

@end
