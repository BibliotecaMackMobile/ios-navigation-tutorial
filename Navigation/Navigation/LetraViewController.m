//
//  LetraViewController.m
//  Navigation
//
//  Created by Jean de Freitas Gomes on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "Dicionario.h"
@interface LetraViewController ()

@end

static char letra = 65;

@implementation LetraViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated
{
    [[self navigationItem] setTitle:[[NSString alloc] initWithFormat:@"%c", letra]];
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle: [[[Dicionario sharedInstance] getDicionario] valueForKey:[[NSString alloc] initWithFormat:@"%c",letra]] forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
}

-(IBAction)next:(id)sender
{
    letra++;
    LetraViewController *prox = [[LetraViewController alloc] initWithNibName:Nil bundle:nil];
    [[self navigationController] pushViewController:prox animated:YES];
}

@end
