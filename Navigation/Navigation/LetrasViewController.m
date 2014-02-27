//
//  LetrasViewController.m
//  Navigation
//
//  Created by Marcus Vinicius Seixas on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"
#import "Palavra.h"
#import "Dicionario.h"
#import "LetraBViewController.h"

@interface LetrasViewController ()

@end

@implementation LetrasViewController


-(id) initWithPalavra:(Palavra *)palavra
{
    self = [super init];
    if (self) {
        _palavra = palavra;
    }
    return self;
}

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
    self.title = [_palavra letra];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeRoundedRect];
    [botao
     setTitle:[_palavra palavra]
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    _myImage = [[UIImageView alloc] initWithFrame:CGRectMake(90, 90, 150, 150)];
    
    _myImage.image = [UIImage imageNamed:[_palavra imagem]];
    
    [self.view addSubview:_myImage];
}

-(void)next:(id)sender {
    [[Dicionario sharedInstancia]Atualizar];
    
    LetrasViewController *proximo = [[LetrasViewController allocWithZone:Nil]initWithPalavra:_palavra];
    
    [self.navigationController pushViewController:proximo animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
