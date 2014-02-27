//
//  LetraViewController.h
//  Navigation
//
//  Created by Jean de Freitas Gomes on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraViewController : UIViewController


@property AVSpeechUtterance *utt;
@property AVSpeechSynthesizer *syn;

@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)startSpeak:(id)sender;

@end
