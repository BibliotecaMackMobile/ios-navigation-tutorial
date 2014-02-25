//
//  Letra2ViewController.m
//  Navigation
//
//  Created by Emannuel Fernandes de Oliveira Carvalho on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Letra2ViewController.h"

@interface Letra2ViewController ()

@end

@implementation Letra2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             andTitle:(NSString *)title
           andContent:(NSString *)content {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _myTitle = title;
        _content = content;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DataSingleton *dados = [DataSingleton sharedData];
    
    self.title = _myTitle;
    
    //botao para frente
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //botao para tras
    UIBarButtonItem *previous = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem=previous;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    
    [botao setTitle:_content forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    dados.currentIndex++;
    
    [self.view addSubview:botao];
}

-(void)next:(id)sender {
    DataSingleton *dados = [DataSingleton sharedData];
    
    if (dados.currentIndex == dados.dataLetters.count) {
        dados.currentIndex = 0;
    }
    
    Letter *l = [dados.dataLetters objectAtIndex:dados.currentIndex];
    
//    LetraViewController *proximo = [[LetraViewController alloc]
//                                    initWithNibName:nil
//                                    bundle:NULL andTitle:l.title andContent:l.word];
    
    LetraViewController *proximo = self.navigationController.presentingViewController;
    
    proximo.title = l.title;
    proximo.content = l.word;
    
    [self.navigationController popToViewController:proximo
                                         animated:YES];
}

-(void)previous:(id)sender {
    DataSingleton *dados = [DataSingleton sharedData];
    
    if (dados.currentIndex == 1) {
        dados.currentIndex = dados.dataLetters.count + 1;
    }
    
    dados.currentIndex = dados.currentIndex - 2;
    Letter *l = [dados.dataLetters objectAtIndex:dados.currentIndex];
    
//    LetraViewController *anterior = [[LetraViewController alloc]
//                                     initWithNibName:nil
//                                     bundle:NULL andTitle:l.title andContent:l.word];
    
    LetraViewController *anterior = self.navigationController.presentingViewController;
    
    anterior.title = l.title;
    anterior.content = l.word;
    
    [self.navigationController popToViewController:anterior animated:YES];
}


@end
