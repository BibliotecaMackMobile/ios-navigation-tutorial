//
//  LetraCViewController.m
//  Navigation
//
//  Created by Luiz on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraCViewController.h"

@interface LetraCViewController ()

@end

@implementation LetraCViewController

-(IBAction)next:(id)sender {
}

#pragma mark - UIViewController

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
	// Do any additional setup after loading the view.
    
    [self setTitle:@"C"];
    
    // Navigation
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    [[self navigationItem] setRightBarButtonItem:next];
    
    // Imagens
    [self setImgCacetete:[UIImage imageNamed:@"Cacetete.jpg"]];
    [self setImgViewCacetete:[[UIImageView alloc] initWithFrame:CGRectMake(10, 30, 100, 100)]];
    [[self imgViewCacetete] setImage:[self imgCacetete]];
    
    // Botão
    
    // Adiciona no canvas
    [[self view] addSubview:[self imgViewCacetete]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
