//
//  LetterViewController.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterViewController.h"
#import "Singleton.h"
#import "Letter.h"

@interface LetterViewController ()

@end

@implementation LetterViewController
static int vari = 0;

- (void)viewDidLoad
{
	[super viewDidLoad];
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    
    self.title = [NSString stringWithFormat:@"%c", let.letter ];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    [botao setTitle:let.word forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
}

-(void)next:(id)sender {
    LetterViewController *proximo = [[LetterViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    vari++;
    
    
}

@end
