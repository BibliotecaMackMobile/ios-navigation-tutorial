//
//  MackenzieFirstViewController.m
//  Navigation
//
//  Created by Rogerio Bordignon on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieFirstViewController.h"

@interface MackenzieFirstViewController ()

@end

@implementation MackenzieFirstViewController
static int contLetter = 0;

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
    // Do any additional setup after loading the view from its nib.
   self.title = @"Pokemon";
    UIBarButtonItem *nextLetter = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem = nextLetter;
                                
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

                                   
- (void) next:(id)sender {
    contLetter ++;
    if(contLetter > 25) {
        contLetter = 0;
        [self.navigationController popToRootViewControllerAnimated:YES]; //Volta ao primeiro
    }
    else {
        MackenzieFirstViewController * prox = [[MackenzieFirstViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:prox animated:YES];
    }
}

- (void) back:(id)sender {
    contLetter --;
    if(contLetter < 0) {
        contLetter = 25;
    }
}
@end
