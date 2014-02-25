//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "Palavra.h"
#import <AVFoundation/AVFoundation.h>

@implementation LetraAViewController


-(void) viewDidLoad {
    [super viewDidLoad];
    
    item = [PalavrasSingleton sharedInstance];
    [self exibirDados:item];

}


-(void)exibirDados:(PalavrasSingleton *)item{
    
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
    [botao setFont:[UIFont systemFontOfSize:20]];
    [botao setTitle:[a palavra] forState:UIControlStateNormal ];
    word = [a palavra];
    botao.center = self.view.center;
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [botao addTarget:self action:@selector(falarTexto:)forControlEvents:UIControlEventTouchDown];

    if (item.palavras.count == 1) {
        next.enabled = NO;
    }
    
    
    
    [self.view addSubview:botao];
    [item.palavras removeObjectAtIndex:0];
}

-(void)falarTexto: (id)sender{
    
    Palavra *a = [item.palavras firstObject];
    
    AVSpeechSynthesizer * speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance * utterance = [[AVSpeechUtterance alloc] initWithString:word];
    utterance.rate = 0.2;
    [speechSynthesizer speakUtterance:utterance];

    
    
    
    
}

-(void)nextPO:(id)sender {
    LetraAViewController *proximo = [[LetraAViewController alloc] initWithNibName:nil bundle:NULL];
    [self.navigationController pushViewController:proximo animated:YES];
}


@end
