//
//  LetraViewController.h
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Letra2ViewController.h"
#import "DataSingleton.h"
#import "Letter.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraViewController : UIViewController

@property (weak, nonatomic) NSString *myTitle;
@property (weak, nonatomic) NSString *content;

@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;
@property (strong, nonatomic) AVSpeechUtterance *utterance;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andTitle:(NSString *)title andContent:(NSString *)content;

@end
