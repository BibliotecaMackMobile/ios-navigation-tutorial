//
//  InitialViewController.m
//  Navigation
//
//  Created by Vinicius Soares Lima on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "InitialViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"A";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    

    // Do any additional setup after loading the view from its nib.
}

-(void)next:(id)sender {
//    LetraBViewController *proximo = [[LetraBViewController alloc]
//                                     initWithNibName:nil
//                                     bundle:NULL];
//    [self.navigationController pushViewController:proximo
//                                         animated:YES];
//    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
