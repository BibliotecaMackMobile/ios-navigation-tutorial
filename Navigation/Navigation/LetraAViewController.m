//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "Palavra.h"

@implementation LetraAViewController



-(void) viewDidLoad {
    [super viewDidLoad];

    PalavrasSingleton *item = [PalavrasSingleton sharedInstance];
    
    Palavra *a = [item.palavras firstObject];
    
    //Botão próxima View
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(nextPO:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //Título
    self.title = a.letra;
    
    //Letra
    UILabel *letra = [[UILabel alloc]initWithFrame:CGRectMake(50, 150, 100, 100)];
    [letra setText:[a letra]];
    [letra setFont:[UIFont systemFontOfSize:100]];
    [self.view addSubview:letra];
    
    //Imagem
    UIImageView *imagem = [[UIImageView alloc]initWithFrame:CGRectMake(150, 150, 100, 100)];
    UIImage *img = [UIImage imageNamed:[a imagem]];
    [imagem setImage:img];
    [self.view addSubview:imagem];
    
    //Botão - não faz nada...
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:[a palavra] forState:UIControlStateNormal ];
    botao.center = self.view.center;
    [botao sizeToFit];
    botao.center = self.view.center;
    [self.view addSubview:botao];
 
}


-(void)nextPO:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:proximo animated:YES];
}


@end
