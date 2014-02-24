//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import "Pagina.h"

@implementation LetraAViewController

@synthesize letter,singleton;

-(void) viewDidLoad {
    [super viewDidLoad];
    self.title = letter;
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
    singleton = [Singleton getInstancia];
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    Pagina *p = [singleton.dictionary objectForKey:[singleton.array objectAtIndex:singleton.cont]];
    proximo.letter = p.title;
    singleton.cont++;
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
