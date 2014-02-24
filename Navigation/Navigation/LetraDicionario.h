//
//  LetraDicionario.h
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LetraDicionario : NSObject

@property (nonatomic, strong) NSString *nome;
@property (nonatomic, strong) UIImage *img;

-(id)initWithNome:(NSString*)valorNome andImagem:(UIImage*)valorImg;
@end
