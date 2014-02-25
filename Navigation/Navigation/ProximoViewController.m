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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)init{
    self = [super init];
    if (self) {
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
        Singleton *single = [Singleton inicia];
        Dicionario *novaLetra = [[single letras]objectAtIndex:0];
        
        _botaoProximo = [UIButton
                         buttonWithType:UIButtonTypeSystem];
        
        [_botaoProximo addTarget:self action:@selector(executaSom:) forControlEvents:UIControlEventTouchUpInside];
        [_botaoProximo
         setTitle:[[novaLetra palavra] stringByAppendingString:@"         "] forState:UIControlStateNormal];
        [_botaoProximo setBackgroundImage:[novaLetra imagem] forState:UIControlStateNormal];
        [_botaoProximo sizeToFit];
        _botaoProximo.center = self.view.center;
        [self.view addSubview:_botaoProximo];
        
        _texto = [[UILabel alloc]initWithFrame:CGRectMake(130, 400, 500, 50)];
        [_texto setText:@"                      "];
        [_texto setText:[novaLetra palavra]];
        [_texto setNumberOfLines:0];
        [_texto sizeToFit];
        [self.view addSubview:_texto];
        
    }
    return self;
}

-(void)next:(id)sender{
    Singleton *single = [Singleton inicia];
    Dicionario *novaLetra = [[single letras]objectAtIndex:[single indice]];
    single.indice++;
    
    AnteriorViewController *anterior = [[AnteriorViewController alloc]init];

    [[self navigationController] pushViewController:anterior animated:YES];
    [anterior setTitle:[novaLetra letraGrande]];
    [[anterior botaoAnterior] setTitle:[novaLetra palavra] forState:UIControlStateNormal];
    
    [[anterior texto] setText:[novaLetra palavra]];
    
}

-(void)executaSom: (id)sender{
    Singleton *single = [Singleton inicia];
    Dicionario *novaLetra = [[single letras]objectAtIndex:[single indice]-1];
    
    
    _synthesizer = [[AVSpeechSynthesizer alloc]init];
    _utterance = [AVSpeechUtterance speechUtteranceWithString:[novaLetra palavra]];
    _utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    _utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [_synthesizer speakUtterance:_utterance];
}

@end
