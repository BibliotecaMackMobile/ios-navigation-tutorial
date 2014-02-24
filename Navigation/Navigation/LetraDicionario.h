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
@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UIImage *img;
@property (nonatomic, strong) UIButton *btn;

-(id)initWithNome:(NSString*)valorNome andImageView:(UIImageView*)valorImgView andImage:(UIImage*)valorImg andBotao:(UIButton*)valorBtn;

@end
