//
//  LetraViewController.h
//  Navigation
//
//  Created by Lucas da Silva Pereira on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraViewController : UIViewController {
    AVSpeechSynthesizer *syntesizer;
    AVSpeechUtterance *utterance;
}
@end
