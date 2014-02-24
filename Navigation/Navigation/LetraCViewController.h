//
//  LetraCViewController.h
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraCViewController : UIViewController <AVAudioPlayerDelegate>

// Button
@property (nonatomic, strong) UIButton *btnCacetete;

// ImageView
@property (nonatomic, strong) UIImageView *imgViewCacetete;

// Image
@property (nonatomic, weak) UIImage *imgCacetete;

// AVAudioPlayer
@property (nonatomic, retain) AVAudioPlayer *audioCacetete;

-(IBAction)next:(id)sender;

-(IBAction)descreverImagem:(id)sender;

@end
