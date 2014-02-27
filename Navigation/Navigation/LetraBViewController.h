//
//  LetraBViewController.h
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Palavra;

@interface LetraBViewController : UIViewController

@property (nonatomic, strong) UIImageView *myImage;
@property (nonatomic, strong) Palavra *palavra;

-(id) initWithPalavra:(Palavra *)palavra;


@end
