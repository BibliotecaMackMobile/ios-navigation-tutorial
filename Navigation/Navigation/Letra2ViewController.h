//
//  Letra2ViewController.h
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LetraViewController.h"
#import "DataSingleton.h"
#import "Letter.h"

@interface Letra2ViewController : UIViewController

@property (weak, nonatomic) NSString *myTitle;
@property (weak, nonatomic) NSString *content;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andTitle:(NSString *)title andContent:(NSString *)content;

@end
