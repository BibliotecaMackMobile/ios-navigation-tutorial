//
//  MackenzieFirstViewController.h
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MackenzieArray.h"

@interface MackenzieFirstViewController : UIViewController

@property (nonatomic) MackenzieArray * AlfaDictionary;
@property (weak, nonatomic) IBOutlet UILabel *lblLetter;
@property (weak, nonatomic) IBOutlet UIImageView *lblImage;
@property (weak, nonatomic) IBOutlet UILabel *lblWord;
- (IBAction)speakName:(id)sender;

@property (weak, nonatomic) IBOutlet UINavigationItem *navegationBar;

@end
