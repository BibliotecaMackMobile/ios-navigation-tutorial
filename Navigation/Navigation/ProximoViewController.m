//
//  ProximoViewController.m
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ProximoViewController.h"
#import "Singleton.h"
#import "Dicionario.h"

@interface ProximoViewController ()

@end

@implementation ProximoViewController

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)init{
    self = [super init];
    if (self) {
        Singleton *single =[Singleton inicia];
        Dicionario *dic = [[single letras] objectAtIndex:0];
        [self setTitle:[dic letraGrande]];
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
        
        [self setTitle:[dic letraGrande]];
    }
    return self;
}

-(void)next:(id)sender{
    Dicionario *novaLetra = [[Dicionario alloc]init];
    [novaLetra adicionaPalavra:@"Aranha" letraGrande:@"A" imagem:nil];
    
    ProximoViewController *proximo = [[ProximoViewController alloc]init];
    [[self navigationController ] pushViewController:proximo animated:YES];
}

@end
