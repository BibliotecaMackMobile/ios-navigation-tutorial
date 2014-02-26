//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"
#import "Dados.h"

@interface LetrasViewController ()
{
    UILabel *palavraLabel;
    UIImageView *imagem;
}
@end

@implementation LetrasViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    _synthesizer = [[AVSpeechSynthesizer alloc] init];
    
    //carrega o array com as palavras
    [self loadData];
    [[Dados sharedInstance] loadData];
    
    //inicializa as variaveis auxiliares
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //cria o botao de "seguinte"
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    
    //cria o botao de retorno
    UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
    self.navigationItem.leftBarButtonItem = previous;
    previous.enabled = NO;
    
    //cria a label para a palavra
    palavraLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 400, 320, 50)];
    palavraLabel.text = [Dados sharedInstance].palavras[[Dados sharedInstance].count];
    palavraLabel.textAlignment = NSTextAlignmentCenter;
    palavraLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:30.0];
    [self.view addSubview:palavraLabel];
    
    //cria a image view e inicializa
    imagem = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    imagem.image = [UIImage imageNamed:[[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] lowercaseString]];
    imagem.center = self.view.center;
    imagem.userInteractionEnabled = YES;
    [self.view addSubview:imagem];
    
    UITapGestureRecognizer *imagemTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(falaPalavra)];
    [imagem addGestureRecognizer:imagemTap];
}

- (void)next:(id)sender
{
    //incrementa o contador e pega a posiçao atual na string
    [Dados sharedInstance].count ++;
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //se for a ultima letra desabilita o botao
    if ([Dados sharedInstance].count == [Dados sharedInstance].alfabeto.length - 1)
    {
        self.navigationItem.rightBarButtonItem.enabled = NO;
    } else if ([Dados sharedInstance].count == 1){ //habilita o botao de retorno
        self.navigationItem.leftBarButtonItem.enabled = YES;
    }
    
    [self mudarFrase];
    [self mudarImagem];
}

- (void)previous:(id)sender
{
    //decrementa o contador e pega a posicao atual na string
    [Dados sharedInstance].count --;
    self.title = [[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)];
    
    //se for a primeira posicao desabilita o botao de retorno
    if ([Dados sharedInstance].count == 0)
    {
        self.navigationItem.leftBarButtonItem.enabled = NO;
    } else if ([Dados sharedInstance].count == [Dados sharedInstance].alfabeto.length - 2) // habilita o botao de seguinte
    {
        self.navigationItem.rightBarButtonItem.enabled = YES;
    }
    
    [self mudarFrase];
    [self mudarImagem];
}

- (void)loadData
{
    //pega o caminho do plist onde estao as palavras e carrega o array "palavras"
    NSString *path = [[NSBundle mainBundle]pathForResource:@"Letras" ofType:@"plist"];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    
    [Dados sharedInstance].palavras = [dictionary valueForKey:@"Letras"];
}

- (void)mudarFrase
{
    palavraLabel.text = [Dados sharedInstance].palavras[[Dados sharedInstance].count];
}

- (void)mudarImagem
{
    imagem.image = [UIImage imageNamed:[[[Dados sharedInstance].alfabeto substringWithRange:NSMakeRange([Dados sharedInstance].count, 1)] lowercaseString]];
}

- (void)falaPalavra
{
    _utterance = [AVSpeechUtterance speechUtteranceWithString:[Dados sharedInstance].palavras[[Dados sharedInstance].count]];
    _utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    _utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-Br"];
    [_synthesizer speakUtterance:_utterance];
}

@end
