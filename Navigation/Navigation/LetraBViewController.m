//
//  LetraBViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraBViewController.h"
#import "shared.h"
#import "dicionario.h"

@implementation LetraBViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    shared *c = [shared sharedInstance];
    dicionario *d = [[dicionario alloc]init];
    
    d = [c.listaDicionario objectAtIndex:c.count];
    self.title = d.letra;
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
        
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:d.palavra forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
        
    [self.view addSubview:botao];
    
}

-(void)next:(id)sender {
    shared *c = [shared sharedInstance];
    c.count = c.count + 1;
    NSLog(@"%d", c.count);
    LetraBViewController *proximo = [[LetraBViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}


@end
