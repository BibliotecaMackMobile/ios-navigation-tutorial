//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"

@implementation LetraAViewController

@synthesize letter,singleton,ttitle,word,p;

-(void) viewDidLoad {
    [super viewDidLoad];
    singleton = [Singleton getInstancia];
    p = [singleton.dictionary objectForKey:[singleton.array objectAtIndex:singleton.cont]];
    letter = [[UILabel alloc]initWithFrame:CGRectMake(30, 130, 120 , 120)];
    word = [[UILabel alloc]initWithFrame:CGRectMake(60, 260, 120 , 20)];
    letter.font = [UIFont fontWithName:@"Arial" size:130.0f];
    letter.text = ttitle;
    word.text = p.word;
    self.title = ttitle;
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
    
    //[self.view addSubview:botao];
    [self.view addSubview:letter];
    [self.view addSubview:word];
 
}

-(void)next:(id)sender {
    singleton = [Singleton getInstancia];
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    proximo.ttitle = p.title;
    proximo.letter.text = p.title;
    singleton.cont++;
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}




@end
