//
//  LetraAViewController.h
//  ios-navigation
//
//  Created by Diego Jurfest Ceccon on 25/02/14.
//  Copyright (c) 2014 ___DIEGOJURFESTCECCON___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraAViewController : UIViewController

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UITextField *x;
@property (nonatomic, strong) AVSpeechSynthesizer *avspeech;
@property (nonatomic, strong) AVSpeechUtterance *avutterance;
@property (nonatomic, strong) NSArray *palavras;

@end

