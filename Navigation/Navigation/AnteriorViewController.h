//
//  AnteriorViewController.h
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface AnteriorViewController : UIViewController
@property (strong,nonatomic) AVSpeechSynthesizer *synthesizer;
@property (strong,nonatomic) AVSpeechUtterance *utterance;
@property UIButton *botaoAnterior;
@property UILabel *texto;
-(id)init;
@end
