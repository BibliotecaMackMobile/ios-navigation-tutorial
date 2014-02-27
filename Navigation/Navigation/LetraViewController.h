//
//  LetraViewController.h
//  Navigation
//
//  Created by Isabela Mayumi R. Suitsu  on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LetraViewController : UIViewController
{
    char letra;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property IBOutlet UIButton *botPalavra;

-(id)initWithLetra:(char )l;

- (IBAction)botPalavra:(id)sender;

@end
