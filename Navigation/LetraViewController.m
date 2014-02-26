//
//  LetraViewController.m
//  Navigation
//
//  Created by Lucas da Silva Pereira on 24/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraViewController.h"
#import "Alfabeto.h"

@interface LetraViewController ()
{
    Alfabeto *alfabeto;
}

@end

@implementation LetraViewController

-(void)viewWillAppear:(BOOL)animated
{
    if (![alfabeto.letraAtual.letra isEqualToString:self.title]) {
        [alfabeto moveAnterior];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    alfabeto = [Alfabeto getInstance];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = [NSString stringWithFormat:@"%@", alfabeto.letraAtual.letra];
    
    if (alfabeto.hasNext)
    {
        UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:alfabeto.letraProxima style:UIBarButtonItemStyleBordered target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
    
    }
    
    AlfabetoLetra *letraAtual = alfabeto.letraAtual;
    
    UIImageView *imgIlustrativa = [[UIImageView alloc] initWithImage:letraAtual.imagem];
    imgIlustrativa.frame = CGRectMake(75, 100, 200, 200);
    
    [self.view addSubview:imgIlustrativa];
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeRoundedRect];
    [botao
     setTitle:letraAtual.palavra
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.frame = CGRectMake(100, 380, 100, 30);
    [botao addTarget:self action:@selector(falaPalavra:) forControlEvents:UIControlEventTouchDown];
    NSLog(@"%@", alfabeto.letraAtual.palavra);
    [self.view addSubview:botao];
}

-(IBAction)falaPalavra:(UIButton*)sender
{
    if (!syntesizer) {
        syntesizer = [[AVSpeechSynthesizer alloc] init];
    }
    utterance = [[AVSpeechUtterance alloc] initWithString:sender.titleLabel.text];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [syntesizer speakUtterance:utterance];
}

-(void)next:(id)sender {
    [alfabeto moveProximo];
    LetraViewController *proximo = [[LetraViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}

@end
