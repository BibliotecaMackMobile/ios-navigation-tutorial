//
//  ProximoViewController.m
//  Navigation
//
//  Created by Rodrigo Soldi Lopes on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ProximoViewController.h"
#import "AnteriorViewController.h"
#import "Singleton.h"
#import "Dicionario.h"

@interface ProximoViewController ()

@end

@implementation ProximoViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    _synthesizer = [[AVSpeechSynthesizer alloc]init];
    
    Singleton *single = [Singleton inicia];
    Dicionario *novaLetra = [[single letras]objectAtIndex:0];
    _texto = [[UILabel alloc]initWithFrame:CGRectMake(130, 500, 500, 50)];
    [_texto setText:[novaLetra palavra]];
    [_texto setNumberOfLines:0];
    [self.view addSubview:_texto];
}


-(id)init{
    self = [super init];
    if (self) {
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
        
        //botao da esquerda
        UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
        self.navigationItem.leftBarButtonItem = back;
        
        
        Singleton *single = [Singleton inicia];
        Dicionario *novaLetra = [[single letras]objectAtIndex:0];
        
        _botaoProximo = [UIButton
                         buttonWithType:UIButtonTypeSystem];
        
        [_botaoProximo addTarget:self action:@selector(executaSom:) forControlEvents:UIControlEventTouchUpInside];
        [_botaoProximo setTitle:@"         " forState:UIControlStateNormal];
        [_botaoProximo setBackgroundImage:[novaLetra imagem] forState:UIControlStateNormal];
        [_botaoProximo sizeToFit];
        _botaoProximo.center = self.view.center;
        [self.view addSubview:_botaoProximo];
        
    }
    return self;
}

-(void)next:(id)sender{
    Singleton *single = [Singleton inicia];
    if (single.indice>=26) {
        [single setIndice:0];
    }
    Dicionario *novaLetra = [[single letras]objectAtIndex:[single indice]];
    single.indice++;

    AnteriorViewController *anterior = [[AnteriorViewController alloc]init];

    [[self navigationController] pushViewController:anterior animated:YES];
    
    [anterior setTitle:[novaLetra letraGrande]];
    [[anterior botaoAnterior] setBackgroundImage:[novaLetra imagem] forState:UIControlStateNormal];
    [[anterior botaoAnterior] sizeToFit];
    [[anterior texto] setText:[novaLetra palavra]];
}

-(void)back: (id)sender{
    Singleton *single = [Singleton inicia];
    single.indice--;
    if (single.indice<=0) {
        [single setIndice:26];
    }
    Dicionario *novaLetra = [[single letras]objectAtIndex:[single indice]-1];
    
    AnteriorViewController *anterior = [[AnteriorViewController alloc]init];
    
    [[self navigationController] pushViewController:anterior animated:YES];
    
    [anterior setTitle:[novaLetra letraGrande]];
    [[anterior botaoAnterior] setBackgroundImage:[novaLetra imagem] forState:UIControlStateNormal];
    [[anterior texto] setText:[novaLetra palavra]];
    [[anterior botaoAnterior] sizeToFit];
}

-(void)executaSom: (id)sender{
    Singleton *single = [Singleton inicia];
    Dicionario *novaLetra = [[single letras]objectAtIndex:[single indice]-1];
    
    _utterance = [AVSpeechUtterance speechUtteranceWithString:[novaLetra palavra]];
    _utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    _utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [_synthesizer speakUtterance:_utterance];
}

@end
