//
//  LetraAViewController.h
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraAViewController : UIViewController {
    int num ;
    UIImage *imagem;
    NSArray *letras;
    NSArray *palavras;
    NSDictionary *dicionario;
    AVSpeechSynthesizer * fala;
    AVSpeechUtterance * falau;
    
}
@property int num;
@property (nonatomic,strong) NSString *palavra;
@property (nonatomic,strong) NSString *letra;
@property (nonatomic,strong) UIImage *imagem;
@property (nonatomic,strong) NSArray *letras;
@property (nonatomic,strong) NSArray *palavras;
@property (nonatomic,strong) NSDictionary *dicionario;

@end
