//
//  LetraViewController.h
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetraViewController : UIViewController<UIImagePickerControllerDelegate>

@property (nonatomic) NSDictionary *dicionario;
@property (nonatomic) NSArray *key;

// ImageView
@property (nonatomic, strong) UIImageView *imgViewImagem;

// Button
@property (nonatomic, strong) UIButton *btnPlayAudio;

// Label
@property (nonatomic, strong) UILabel *lblNomeImagem;

// Metodo para o canvas
-(CGRect)makeRectWithX:(CGFloat)x andY:(CGFloat)y andLargura:(CGFloat)largura andAltura:(CGFloat)altura;

// Metodo para UIViewNavegationController
-(IBAction)next:(id)sender;

-(id)initWithLetra:(NSString*)valorLetra;

-(IBAction)efeitoBtnPlayAudio:(id)sender;

@end
