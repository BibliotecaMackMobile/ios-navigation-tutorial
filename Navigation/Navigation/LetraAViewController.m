//
//  LetraAViewController.m
//  Navigation
//
//  Created by Rodrigo Soldi on 2/23/14.
//  Copyright (c) 2014 Rorigo Soldi. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import "Dicionario.h"

@implementation LetraAViewController



-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = @"A";
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
    LetraBViewController *proximo = [[LetraBViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
