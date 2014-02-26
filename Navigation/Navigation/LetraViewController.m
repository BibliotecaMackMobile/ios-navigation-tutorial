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
    //Seta o título da página com a letra
    [[self navigationItem] setTitle:[[NSString alloc] initWithFormat:@"%c", letra]];
    
    //Coloca o botão para ir para próxima letra
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //Coloca o botão para voltar para letra anterior
    UIBarButtonItem *butaum = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(voltar:)];
    self.navigationItem.leftBarButtonItem = butaum;
    
    //Adiciona o botão com a palavra referente a letra
    [_button setTitle: [[[Dicionario sharedInstance] getDicionario] valueForKey:[[NSString alloc] initWithFormat:@"%c",letra]] forState:UIControlStateNormal];
    
    //Adiciona a imagem
    UIImage *ibagem = [UIImage imageNamed: [[[Dicionario sharedInstance] getDicionario] valueForKey:[[NSString alloc] initWithFormat:@"%c",letra]]];
    
    [_image setImage:ibagem];
}

-(IBAction)next:(id)sender
{
    if (letra != 90)
    {
        letra++;
        LetraViewController *prox = [[LetraViewController alloc] initWithNibName:@"Letra_View" bundle:nil];
        [[self navigationController] pushViewController:prox animated:YES];
    }
    
}

-(IBAction)voltar:(id)sender
{
    if (letra != 65)
    {
        letra--;
        [[self navigationController] popViewControllerAnimated:YES];
    }
}

@end
