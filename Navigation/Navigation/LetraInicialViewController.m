//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraInicialViewController.h"
#import "LetraFinalViewController.h"
#import "Dados.h"

@interface LetraInicialViewController ()
{
    UILabel *palavraLabel;
    UIImageView *imagem;
    UIBarButtonItem *next;
    UIBarButtonItem *previous;
}
@end

@implementation LetraInicialViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    //carrega o array com as palavras
    [[Dados sharedInstance] loadData];
    
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

- (void)next:(id)sender
{
    [Dados sharedInstance].count ++;
    
    LetraFinalViewController *controller = [[LetraFinalViewController alloc] init];
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
