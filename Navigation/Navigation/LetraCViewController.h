//
//  LetraCViewController.h
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetraCViewController : UIViewController

// Button
@property (nonatomic, strong) UIButton *btnCacetete;

// ImageView
@property (nonatomic, strong) UIImageView *imgViewCacetete;

// Image
@property (nonatomic, weak) UIImage *imgCacetete;

-(IBAction)next:(id)sender;

-(IBAction)descreverImagem:(id)sender;

@end
