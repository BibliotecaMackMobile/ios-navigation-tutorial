//
//  LetraAViewController.h
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Singleton.h"
#import "Pagina.h"
#import <AVFoundation/AVFoundation.h>

@interface LetraAViewController : UIViewController

@property (strong, nonatomic) UILabel *letter;
@property (strong, nonatomic) UILabel *word;
@property (strong, nonatomic) Singleton *singleton;
@property (strong, nonatomic) NSString *ttitle;
@property (strong, nonatomic) Pagina *p;
@property (strong, nonatomic) UIImageView *imgView;
@property (strong, nonatomic) AVSpeechSynthesizer *av;
@property (strong, nonatomic) AVSpeechUtterance *utterance;

@end
