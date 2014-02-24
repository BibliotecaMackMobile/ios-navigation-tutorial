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

-(IBAction)descreverImagem:(id)sender {
    NSLog(@"ImagemC");
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
    [self setBtnCacetete:[[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 100)]];
    [[self btnCacetete] setTitle:@"Cacetete" forState:UIControlStateNormal];
    [[self btnCacetete] setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [[self btnCacetete] addTarget:self action:@selector(descreverImagem:) forControlEvents:UIControlEventTouchUpInside];
    
    // Adiciona no canvas
    [[self view] addSubview:[self imgViewCacetete]];
    [[self view]addSubview:[self btnCacetete]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
