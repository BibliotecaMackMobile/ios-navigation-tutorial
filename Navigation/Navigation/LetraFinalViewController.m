//
//  LetraFinalViewController.m
//  Navigation
//
//  Created by Lucas Domene Firmo on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraFinalViewController.h"
#import "Dados.h"
#import "LetraInicialViewController.h"

@interface LetraFinalViewController ()
{
    UILabel *palavraLabel;
    UIImageView *imagem;
    UIBarButtonItem *next;
    UIBarButtonItem *previous;
}
@end

@implementation LetraFinalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"Views no Navigation Controller: %lu", (unsigned long)self.navigationController.viewControllers.count);
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //cria o botao de "seguinte"
    next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    //cria o botao de retorno
    previous = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem = previous;
    
    //cria a label para a palavra
    palavraLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 50)];
    palavraLabel.textAlignment = NSTextAlignmentCenter;
    palavraLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:25.0];
    [self.view addSubview:palavraLabel];
    
    //cria a image view e inicializa
    imagem = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    imagem.center = self.view.center;
    imagem.userInteractionEnabled = YES;
    [self.view addSubview:imagem];
    
    UITapGestureRecognizer *imagemTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(falaPalavra)];
    [imagem addGestureRecognizer:imagemTap];
    
    //adiciona a frase e imagem
    palavraLabel.text = [Dados sharedInstance].palavras[[Dados sharedInstance].count];
    imagem.image = [UIImage imageNamed:[[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] lowercaseString]];
    
    [self verificaPosicao];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)next:(id)sender
{
    [Dados sharedInstance].count ++;
    LetraInicialViewController *controller = [[LetraInicialViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)previous:(id)sender
{
    [Dados sharedInstance].count --;
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)falaPalavra
{
    _synthesizer = [[AVSpeechSynthesizer alloc] init];
    _utterance = [AVSpeechUtterance speechUtteranceWithString:[Dados sharedInstance].palavras[[Dados sharedInstance].count]];
    _utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    _utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-br"];
    [_synthesizer speakUtterance:_utterance];
}

- (void)verificaPosicao
{
    if ([Dados sharedInstance].count == 0)
    {
        previous.enabled = NO;
    } else if ([Dados sharedInstance].count == [Dados sharedInstance].alfabeto.length - 1){
        next.enabled = NO;
    } else {
        previous.enabled = YES;
        next.enabled = YES;
    }
}
@end
