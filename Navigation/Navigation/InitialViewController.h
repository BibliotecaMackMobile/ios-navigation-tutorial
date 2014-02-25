//
//  InitialViewController.h
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dicionario.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
@interface InitialViewController : UIViewController
{
    Dicionario *things;
    
}
@property (weak, nonatomic) IBOutlet UILabel *Letter;
@property (weak, nonatomic) IBOutlet UILabel *word;
@property (weak, nonatomic) IBOutlet UIImageView *imege;

@end
