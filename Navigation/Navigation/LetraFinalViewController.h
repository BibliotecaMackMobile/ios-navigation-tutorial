//
//  LetraFinalViewController.h
//  Navigation
//
//  Created by Lucas Domene Firmo on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraFinalViewController : UIViewController

@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;
@property (strong, nonatomic) AVSpeechUtterance *utterance;

@end
