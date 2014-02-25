//
//  LetterViewController.h
//  Navigation
//
//  Created by Kaê Coutinho - BEPiD on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import "Sections.h"

@interface LetterViewController : UIViewController
{
    NSUInteger letterIndex;
    NSUInteger letterWord;
    NSUInteger letterLanguage;
    Sections * sections;
    UISwipeGestureRecognizer * rightSwipeGesture;
    UISwipeGestureRecognizer * leftSwipeGesture;
    UITapGestureRecognizer * tapGesture;
    AVSpeechSynthesizer * speechSynthesizer;
    AVSpeechUtterance * letterSpeech;
}

@property (nonatomic,weak) IBOutlet UIImageView * letterImageView;
@property (nonatomic,weak) IBOutlet UILabel * letterTitleLabel;
@property (nonatomic,weak) IBOutlet UILabel * letterLanguageLabel;
@property (nonatomic,weak) IBOutlet UIImageView * letterLanguageImageView;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andLetterIndex:(NSUInteger)index;
-(IBAction)changeWord:(id)sender;
-(IBAction)changeLanguage:(id)sender;

@end