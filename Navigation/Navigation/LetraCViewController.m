//
//  LetraCViewController.m
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraCViewController.h"

@interface LetraCViewController ()

@end

@implementation LetraCViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = @"C";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Mostre uma palavra, uma figura e leia a palavra ao apertar um botao"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    
}

-(void)next:(id)sender {
    LetraViewController *proximo = [[LetraViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL andTitle:@"D" andContent:@"aqui vai o texto da letra D"];
    
    [self.navigationController pushViewController:proximo
                                         animated:YES];
}

@end
