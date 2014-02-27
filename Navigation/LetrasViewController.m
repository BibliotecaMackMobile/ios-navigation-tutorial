//
//  LetrasViewController.m
//  Navigation
//
//  Created by VIHP on 2/26/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"
#import <AVFoundation/AVFoundation.h>


@interface LetrasViewController ()

@end

@implementation LetrasViewController

static int i=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    LetrasViewController *ind = [LetrasViewController getInstance];
    
    letras = [NSArray arrayWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G",@"H",
              @"I",@"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"Z", nil];
    
    
    objetos = [NSArray arrayWithObjects:@"Abelha", @"Burro", @"Cachorro", @"Dado", @"Elefante", @"Fada", @"Gato",
               @"Hipopótamo", @"Indio",@"Jóia", @"Kiwi", @"Limão", @"Macaco", @"Navio", @"Ouro", @"Pirata", @"Queijo", @"Rato", @"Sapo", @"Tartaruga", @"Urso", @"Violino", @"Zebra", nil];
    
    imagens = [NSArray arrayWithObjects:@"abelha2.png", @"burro2.png", @"cachorro2.png", @"dado2.png", @"elefante2.png", @"fada2.png", @"gato2.png", @"hipopotamo2.png", @"indio2.png",@"joia2.png", @"Kiwi2.png", @"limao2.png", @"macaco2.png", @"navio2.png", @"ouro2.png", @"pirata2.png", @"queijo2.png", @"rato2.png", @"sapo2.png", @"tartaruga2.png", @"urso2.png", @"violino2.png", @"zebra2.png", nil];

    [_fieldLabel setText:[objetos objectAtIndex:i]];
    
    UIImage *imagem;
    imagem = [UIImage imageNamed:[imagens objectAtIndex:i]];
    [_imageView setImage:imagem];

    
    if (i!=22) {
        UIBarButtonItem *proxima = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximaLetra:)];
        self.navigationItem.rightBarButtonItem=proxima;
    }
    
    
    if(i!=0){
        UIBarButtonItem *anterior = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target: self action:@selector(letraAnterior:)];
        
        self.navigationItem.leftBarButtonItem=anterior;
    }
    
    self.title = [letras objectAtIndex:i];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) proximaLetra: (id)sender{
    LetrasViewController *proximo = [[LetrasViewController alloc]initWithNibName:@"Layout" bundle:nil];
    [self.navigationController pushViewController:proximo animated:YES];
    i++;
}

-(void) letraAnterior:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    i--;
}

- (IBAction)falar:(id)sender {
    AVSpeechSynthesisVoice *voz = [AVSpeechSynthesisVoice voiceWithLanguage:@"PT-BR"];
    AVSpeechUtterance *lendo = [[AVSpeechUtterance alloc]initWithString:[objetos objectAtIndex:i]];
    
    lendo.rate = AVSpeechUtteranceMinimumSpeechRate;
    
    AVSpeechSynthesizer *falando = [[AVSpeechSynthesizer alloc]init];
    
    [lendo setVoice:voz];
    
    [falando speakUtterance:lendo];
    
}

@end
