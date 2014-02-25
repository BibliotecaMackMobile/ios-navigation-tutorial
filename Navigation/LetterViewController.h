//
//  LetterViewController.h
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import "Singleton.h"
#import "Letter.h"

@interface LetterViewController : UIViewController
@property (strong, nonatomic) AVSpeechSynthesizer* synthesizer;
@property (strong, nonatomic) AVSpeechUtterance* utterance;


@end
